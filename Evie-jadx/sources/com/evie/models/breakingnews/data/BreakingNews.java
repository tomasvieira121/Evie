package com.evie.models.breakingnews.data;

/* JADX INFO: loaded from: classes.dex */
public class BreakingNews {
    private final String articleId;
    private final String description;
    private final String image;
    private final String title;
    private final String webViewPubFavicon;
    private final String webViewPubName;
    private final String webViewTitle;
    private final String webViewTopics;
    private final String webViewUrl;

    public BreakingNews(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        this.articleId = str;
        this.title = str2;
        this.description = str3;
        this.image = str4;
        this.webViewUrl = str5;
        this.webViewTitle = str6;
        this.webViewPubName = str7;
        this.webViewPubFavicon = str8;
        this.webViewTopics = str9;
    }

    protected boolean canEqual(Object obj) {
        return obj instanceof BreakingNews;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BreakingNews)) {
            return false;
        }
        BreakingNews breakingNews = (BreakingNews) obj;
        if (!breakingNews.canEqual(this)) {
            return false;
        }
        String articleId = getArticleId();
        String articleId2 = breakingNews.getArticleId();
        if (articleId != null ? !articleId.equals(articleId2) : articleId2 != null) {
            return false;
        }
        String title = getTitle();
        String title2 = breakingNews.getTitle();
        if (title != null ? !title.equals(title2) : title2 != null) {
            return false;
        }
        String description = getDescription();
        String description2 = breakingNews.getDescription();
        if (description != null ? !description.equals(description2) : description2 != null) {
            return false;
        }
        String image = getImage();
        String image2 = breakingNews.getImage();
        if (image != null ? !image.equals(image2) : image2 != null) {
            return false;
        }
        String webViewUrl = getWebViewUrl();
        String webViewUrl2 = breakingNews.getWebViewUrl();
        if (webViewUrl != null ? !webViewUrl.equals(webViewUrl2) : webViewUrl2 != null) {
            return false;
        }
        String webViewTitle = getWebViewTitle();
        String webViewTitle2 = breakingNews.getWebViewTitle();
        if (webViewTitle != null ? !webViewTitle.equals(webViewTitle2) : webViewTitle2 != null) {
            return false;
        }
        String webViewPubName = getWebViewPubName();
        String webViewPubName2 = breakingNews.getWebViewPubName();
        if (webViewPubName != null ? !webViewPubName.equals(webViewPubName2) : webViewPubName2 != null) {
            return false;
        }
        String webViewPubFavicon = getWebViewPubFavicon();
        String webViewPubFavicon2 = breakingNews.getWebViewPubFavicon();
        if (webViewPubFavicon != null ? !webViewPubFavicon.equals(webViewPubFavicon2) : webViewPubFavicon2 != null) {
            return false;
        }
        String webViewTopics = getWebViewTopics();
        String webViewTopics2 = breakingNews.getWebViewTopics();
        return webViewTopics != null ? webViewTopics.equals(webViewTopics2) : webViewTopics2 == null;
    }

    public int hashCode() {
        String articleId = getArticleId();
        int iHashCode = articleId == null ? 43 : articleId.hashCode();
        String title = getTitle();
        int iHashCode2 = ((iHashCode + 59) * 59) + (title == null ? 43 : title.hashCode());
        String description = getDescription();
        int iHashCode3 = (iHashCode2 * 59) + (description == null ? 43 : description.hashCode());
        String image = getImage();
        int iHashCode4 = (iHashCode3 * 59) + (image == null ? 43 : image.hashCode());
        String webViewUrl = getWebViewUrl();
        int iHashCode5 = (iHashCode4 * 59) + (webViewUrl == null ? 43 : webViewUrl.hashCode());
        String webViewTitle = getWebViewTitle();
        int iHashCode6 = (iHashCode5 * 59) + (webViewTitle == null ? 43 : webViewTitle.hashCode());
        String webViewPubName = getWebViewPubName();
        int iHashCode7 = (iHashCode6 * 59) + (webViewPubName == null ? 43 : webViewPubName.hashCode());
        String webViewPubFavicon = getWebViewPubFavicon();
        int iHashCode8 = (iHashCode7 * 59) + (webViewPubFavicon == null ? 43 : webViewPubFavicon.hashCode());
        String webViewTopics = getWebViewTopics();
        return (iHashCode8 * 59) + (webViewTopics != null ? webViewTopics.hashCode() : 43);
    }

    public String toString() {
        return "BreakingNews(articleId=" + getArticleId() + ", title=" + getTitle() + ", description=" + getDescription() + ", image=" + getImage() + ", webViewUrl=" + getWebViewUrl() + ", webViewTitle=" + getWebViewTitle() + ", webViewPubName=" + getWebViewPubName() + ", webViewPubFavicon=" + getWebViewPubFavicon() + ", webViewTopics=" + getWebViewTopics() + ")";
    }

    public String getArticleId() {
        return this.articleId;
    }

    public String getTitle() {
        return this.title;
    }

    public String getDescription() {
        return this.description;
    }

    public String getImage() {
        return this.image;
    }

    public String getWebViewUrl() {
        return this.webViewUrl;
    }

    public String getWebViewTitle() {
        return this.webViewTitle;
    }

    public String getWebViewPubName() {
        return this.webViewPubName;
    }

    public String getWebViewPubFavicon() {
        return this.webViewPubFavicon;
    }

    public String getWebViewTopics() {
        return this.webViewTopics;
    }
}
