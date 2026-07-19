.class public Lcom/voxel/simplesearchlauncher/utils/Blur;
.super Ljava/lang/Object;
.source "Blur.java"


# direct methods
.method public static fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 36

    move/from16 v0, p2

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 64
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int v13, v11, v12

    .line 66
    new-array v14, v13, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, v14

    move v6, v11

    move v9, v11

    move v10, v12

    .line 67
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v3, v11, -0x1

    add-int/lit8 v4, v12, -0x1

    add-int v5, v0, v0

    add-int/2addr v5, v2

    .line 74
    new-array v6, v13, [I

    .line 75
    new-array v7, v13, [I

    .line 76
    new-array v8, v13, [I

    .line 78
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v9, v9, [I

    add-int/lit8 v10, v5, 0x1

    shr-int/2addr v10, v2

    mul-int v10, v10, v10

    mul-int/lit16 v13, v10, 0x100

    .line 82
    new-array v15, v13, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v13, :cond_1

    .line 84
    div-int v16, v2, v10

    aput v16, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    .line 89
    filled-new-array {v5, v2}, [I

    move-result-object v2

    const-class v10, I

    invoke-static {v10, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    add-int/lit8 v10, v0, 0x1

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_1
    const/16 v18, 0x2

    if-ge v13, v12, :cond_6

    move-object/from16 p3, v1

    neg-int v1, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_2
    const v28, 0xff00

    const/high16 v29, 0xff0000

    if-gt v1, v0, :cond_3

    move/from16 v31, v4

    move/from16 v30, v12

    const/4 v12, 0x0

    .line 101
    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v16, v4

    aget v4, v14, v4

    add-int v32, v1, v0

    .line 102
    aget-object v32, v2, v32

    and-int v29, v4, v29

    shr-int/lit8 v29, v29, 0x10

    .line 103
    aput v29, v32, v12

    and-int v28, v4, v28

    shr-int/lit8 v28, v28, 0x8

    const/16 v29, 0x1

    .line 104
    aput v28, v32, v29

    and-int/lit16 v4, v4, 0xff

    .line 105
    aput v4, v32, v18

    .line 106
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v4, v10, v4

    .line 107
    aget v28, v32, v12

    mul-int v28, v28, v4

    add-int v19, v19, v28

    .line 108
    aget v28, v32, v29

    mul-int v28, v28, v4

    add-int v20, v20, v28

    .line 109
    aget v28, v32, v18

    mul-int v28, v28, v4

    add-int v21, v21, v28

    if-lez v1, :cond_2

    .line 111
    aget v4, v32, v12

    add-int v25, v25, v4

    .line 112
    aget v4, v32, v29

    add-int v26, v26, v4

    .line 113
    aget v4, v32, v18

    add-int v27, v27, v4

    goto :goto_3

    .line 115
    :cond_2
    aget v4, v32, v12

    add-int v22, v22, v4

    .line 116
    aget v4, v32, v29

    add-int v23, v23, v4

    .line 117
    aget v4, v32, v18

    add-int v24, v24, v4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move/from16 v12, v30

    move/from16 v4, v31

    goto :goto_2

    :cond_3
    move/from16 v31, v4

    move/from16 v30, v12

    move v4, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v11, :cond_5

    .line 124
    aget v12, v15, v19

    aput v12, v6, v16

    .line 125
    aget v12, v15, v20

    aput v12, v7, v16

    .line 126
    aget v12, v15, v21

    aput v12, v8, v16

    sub-int v19, v19, v22

    sub-int v20, v20, v23

    sub-int v21, v21, v24

    sub-int v12, v4, v0

    add-int/2addr v12, v5

    .line 133
    rem-int/2addr v12, v5

    aget-object v12, v2, v12

    const/16 v32, 0x0

    .line 135
    aget v33, v12, v32

    sub-int v22, v22, v33

    const/16 v32, 0x1

    .line 136
    aget v33, v12, v32

    sub-int v23, v23, v33

    .line 137
    aget v33, v12, v18

    sub-int v24, v24, v33

    if-nez v13, :cond_4

    add-int v33, v1, v0

    move-object/from16 v34, v15

    add-int/lit8 v15, v33, 0x1

    .line 140
    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    aput v15, v9, v1

    goto :goto_5

    :cond_4
    move-object/from16 v34, v15

    .line 142
    :goto_5
    aget v15, v9, v1

    add-int v15, v17, v15

    aget v15, v14, v15

    and-int v32, v15, v29

    shr-int/lit8 v32, v32, 0x10

    const/16 v33, 0x0

    .line 144
    aput v32, v12, v33

    and-int v32, v15, v28

    shr-int/lit8 v32, v32, 0x8

    const/16 v35, 0x1

    .line 145
    aput v32, v12, v35

    and-int/lit16 v15, v15, 0xff

    .line 146
    aput v15, v12, v18

    .line 148
    aget v15, v12, v33

    add-int v25, v25, v15

    .line 149
    aget v15, v12, v35

    add-int v26, v26, v15

    .line 150
    aget v12, v12, v18

    add-int v27, v27, v12

    add-int v19, v19, v25

    add-int v20, v20, v26

    add-int v21, v21, v27

    add-int/lit8 v4, v4, 0x1

    .line 156
    rem-int/2addr v4, v5

    .line 157
    rem-int v12, v4, v5

    aget-object v12, v2, v12

    const/4 v15, 0x0

    .line 159
    aget v32, v12, v15

    add-int v22, v22, v32

    const/16 v32, 0x1

    .line 160
    aget v33, v12, v32

    add-int v23, v23, v33

    .line 161
    aget v33, v12, v18

    add-int v24, v24, v33

    .line 163
    aget v33, v12, v15

    sub-int v25, v25, v33

    .line 164
    aget v15, v12, v32

    sub-int v26, v26, v15

    .line 165
    aget v12, v12, v18

    sub-int v27, v27, v12

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v15, v34

    goto/16 :goto_4

    :cond_5
    move-object/from16 v34, v15

    add-int v17, v17, v11

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p3

    move/from16 v12, v30

    move/from16 v4, v31

    goto/16 :goto_1

    :cond_6
    move-object/from16 p3, v1

    move/from16 v31, v4

    move/from16 v30, v12

    move-object/from16 v34, v15

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v11, :cond_c

    neg-int v3, v0

    mul-int v4, v3, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_7
    if-gt v3, v0, :cond_9

    move-object/from16 v23, v9

    const/4 v9, 0x0

    .line 175
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    add-int v24, v24, v1

    add-int v25, v3, v0

    .line 177
    aget-object v25, v2, v25

    .line 179
    aget v26, v6, v24

    aput v26, v25, v9

    .line 180
    aget v9, v7, v24

    const/16 v26, 0x1

    aput v9, v25, v26

    .line 181
    aget v9, v8, v24

    aput v9, v25, v18

    .line 183
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v9, v10, v9

    .line 185
    aget v26, v6, v24

    mul-int v26, v26, v9

    add-int v12, v12, v26

    .line 186
    aget v26, v7, v24

    mul-int v26, v26, v9

    add-int v13, v13, v26

    .line 187
    aget v24, v8, v24

    mul-int v24, v24, v9

    add-int v15, v15, v24

    if-lez v3, :cond_7

    const/4 v9, 0x0

    .line 190
    aget v24, v25, v9

    add-int v20, v20, v24

    const/16 v24, 0x1

    .line 191
    aget v26, v25, v24

    add-int v21, v21, v26

    .line 192
    aget v25, v25, v18

    add-int v22, v22, v25

    move/from16 v9, v31

    goto :goto_8

    :cond_7
    const/4 v9, 0x0

    const/16 v24, 0x1

    .line 194
    aget v26, v25, v9

    add-int v16, v16, v26

    .line 195
    aget v9, v25, v24

    add-int v17, v17, v9

    .line 196
    aget v9, v25, v18

    add-int v19, v19, v9

    move/from16 v9, v31

    :goto_8
    if-ge v3, v9, :cond_8

    add-int/2addr v4, v11

    :cond_8
    add-int/lit8 v3, v3, 0x1

    move/from16 v31, v9

    move-object/from16 v9, v23

    goto :goto_7

    :cond_9
    move-object/from16 v23, v9

    move/from16 v9, v31

    move v4, v1

    move/from16 v24, v21

    move/from16 v25, v22

    const/4 v3, 0x0

    move/from16 v21, v0

    move/from16 v22, v20

    move/from16 v20, v19

    move/from16 v19, v17

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v13

    move v13, v12

    move/from16 v12, v30

    :goto_9
    if-ge v3, v12, :cond_b

    const/high16 v26, -0x1000000

    .line 207
    aget v27, v14, v4

    and-int v26, v27, v26

    aget v27, v34, v13

    shl-int/lit8 v27, v27, 0x10

    or-int v26, v26, v27

    aget v27, v34, v15

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    aget v27, v34, v16

    or-int v26, v26, v27

    aput v26, v14, v4

    sub-int v13, v13, v17

    sub-int v15, v15, v19

    sub-int v16, v16, v20

    sub-int v26, v21, v0

    add-int v26, v26, v5

    .line 214
    rem-int v26, v26, v5

    aget-object v26, v2, v26

    const/16 v27, 0x0

    .line 216
    aget v28, v26, v27

    sub-int v17, v17, v28

    const/16 v27, 0x1

    .line 217
    aget v28, v26, v27

    sub-int v19, v19, v28

    .line 218
    aget v27, v26, v18

    sub-int v20, v20, v27

    if-nez v1, :cond_a

    add-int v0, v3, v10

    .line 221
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v0, v0, v11

    aput v0, v23, v3

    .line 223
    :cond_a
    aget v0, v23, v3

    add-int/2addr v0, v1

    .line 225
    aget v27, v6, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    .line 226
    aget v27, v7, v0

    const/16 v29, 0x1

    aput v27, v26, v29

    .line 227
    aget v0, v8, v0

    aput v0, v26, v18

    .line 229
    aget v0, v26, v28

    add-int v22, v22, v0

    .line 230
    aget v0, v26, v29

    add-int v24, v24, v0

    .line 231
    aget v0, v26, v18

    add-int v25, v25, v0

    add-int v13, v13, v22

    add-int v15, v15, v24

    add-int v16, v16, v25

    add-int/lit8 v21, v21, 0x1

    .line 237
    rem-int v21, v21, v5

    .line 238
    aget-object v0, v2, v21

    const/16 v26, 0x0

    .line 240
    aget v27, v0, v26

    add-int v17, v17, v27

    const/16 v27, 0x1

    .line 241
    aget v28, v0, v27

    add-int v19, v19, v28

    .line 242
    aget v28, v0, v18

    add-int v20, v20, v28

    .line 244
    aget v28, v0, v26

    sub-int v22, v22, v28

    .line 245
    aget v28, v0, v27

    sub-int v24, v24, v28

    .line 246
    aget v0, v0, v18

    sub-int v25, v25, v0

    add-int/2addr v4, v11

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p2

    goto/16 :goto_9

    :cond_b
    const/16 v26, 0x0

    const/16 v27, 0x1

    add-int/lit8 v1, v1, 0x1

    move/from16 v31, v9

    move/from16 v30, v12

    move-object/from16 v9, v23

    move/from16 v0, p2

    goto/16 :goto_6

    :cond_c
    move/from16 v12, v30

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p3

    move-object v4, v14

    move v6, v11

    move v9, v11

    move v10, v12

    .line 252
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p3
.end method
