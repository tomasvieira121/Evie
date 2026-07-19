package com.google.android.exoplayer2.extractor.p004ts;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.DtsUtil;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.ParsableByteArray;

/* JADX INFO: loaded from: classes.dex */
public final class DtsReader implements ElementaryStreamReader {
    private int bytesRead;
    private Format format;
    private String formatId;
    private final String language;
    private TrackOutput output;
    private long sampleDurationUs;
    private int sampleSize;
    private int syncBytes;
    private long timeUs;
    private final ParsableByteArray headerScratchBytes = new ParsableByteArray(new byte[18]);
    private int state = 0;

    @Override // com.google.android.exoplayer2.extractor.p004ts.ElementaryStreamReader
    public void packetFinished() {
    }

    public DtsReader(String str) {
        this.language = str;
    }

    @Override // com.google.android.exoplayer2.extractor.p004ts.ElementaryStreamReader
    public void seek() {
        this.state = 0;
        this.bytesRead = 0;
        this.syncBytes = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.p004ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.formatId = trackIdGenerator.getFormatId();
        this.output = extractorOutput.track(trackIdGenerator.getTrackId(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.p004ts.ElementaryStreamReader
    public void packetStarted(long j, boolean z) {
        this.timeUs = j;
    }

    @Override // com.google.android.exoplayer2.extractor.p004ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        while (parsableByteArray.bytesLeft() > 0) {
            switch (this.state) {
                case 0:
                    if (skipToNextSync(parsableByteArray)) {
                        this.state = 1;
                    }
                    break;
                case 1:
                    if (continueRead(parsableByteArray, this.headerScratchBytes.data, 18)) {
                        parseHeader();
                        this.headerScratchBytes.setPosition(0);
                        this.output.sampleData(this.headerScratchBytes, 18);
                        this.state = 2;
                    }
                    break;
                case 2:
                    int iMin = Math.min(parsableByteArray.bytesLeft(), this.sampleSize - this.bytesRead);
                    this.output.sampleData(parsableByteArray, iMin);
                    this.bytesRead += iMin;
                    int i = this.bytesRead;
                    int i2 = this.sampleSize;
                    if (i == i2) {
                        this.output.sampleMetadata(this.timeUs, 1, i2, 0, null);
                        this.timeUs += this.sampleDurationUs;
                        this.state = 0;
                    }
                    break;
            }
        }
    }

    private boolean continueRead(ParsableByteArray parsableByteArray, byte[] bArr, int i) {
        int iMin = Math.min(parsableByteArray.bytesLeft(), i - this.bytesRead);
        parsableByteArray.readBytes(bArr, this.bytesRead, iMin);
        this.bytesRead += iMin;
        return this.bytesRead == i;
    }

    private boolean skipToNextSync(ParsableByteArray parsableByteArray) {
        while (parsableByteArray.bytesLeft() > 0) {
            this.syncBytes <<= 8;
            this.syncBytes |= parsableByteArray.readUnsignedByte();
            if (DtsUtil.isSyncWord(this.syncBytes)) {
                this.headerScratchBytes.data[0] = (byte) ((this.syncBytes >> 24) & 255);
                this.headerScratchBytes.data[1] = (byte) ((this.syncBytes >> 16) & 255);
                this.headerScratchBytes.data[2] = (byte) ((this.syncBytes >> 8) & 255);
                this.headerScratchBytes.data[3] = (byte) (this.syncBytes & 255);
                this.bytesRead = 4;
                this.syncBytes = 0;
                return true;
            }
        }
        return false;
    }

    private void parseHeader() {
        byte[] bArr = this.headerScratchBytes.data;
        if (this.format == null) {
            this.format = DtsUtil.parseDtsFormat(bArr, this.formatId, this.language, null);
            this.output.format(this.format);
        }
        this.sampleSize = DtsUtil.getDtsFrameSize(bArr);
        this.sampleDurationUs = (int) ((((long) DtsUtil.parseDtsAudioSampleCount(bArr)) * 1000000) / ((long) this.format.sampleRate));
    }
}
