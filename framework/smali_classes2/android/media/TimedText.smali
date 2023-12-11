.class public final Landroid/media/TimedText;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/TimedText$Justification;,
        Landroid/media/TimedText$Style;,
        Landroid/media/TimedText$Font;,
        Landroid/media/TimedText$CharPos;,
        Landroid/media/TimedText$Karaoke;,
        Landroid/media/TimedText$HyperText;
    }
.end annotation


# static fields
.field private static final FIRST_PRIVATE_KEY:I = 0x65

.field private static final FIRST_PUBLIC_KEY:I = 0x1

.field private static final KEY_BACKGROUND_COLOR_RGBA:I = 0x3

.field private static final KEY_DISPLAY_FLAGS:I = 0x1

.field private static final KEY_END_CHAR:I = 0x68

.field private static final KEY_FONT_ID:I = 0x69

.field private static final KEY_FONT_SIZE:I = 0x6a

.field private static final KEY_GLOBAL_SETTING:I = 0x65

.field private static final KEY_HIGHLIGHT_COLOR_RGBA:I = 0x4

.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_SCROLL_DELAY:I = 0x5

.field private static final KEY_START_CHAR:I = 0x67

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_BLINKING_TEXT_LIST:I = 0x8

.field private static final KEY_STRUCT_FONT_LIST:I = 0x9

.field private static final KEY_STRUCT_HIGHLIGHT_LIST:I = 0xa

.field private static final KEY_STRUCT_HYPER_TEXT_LIST:I = 0xb

.field private static final KEY_STRUCT_JUSTIFICATION:I = 0xf

.field private static final KEY_STRUCT_KARAOKE_LIST:I = 0xc

.field private static final KEY_STRUCT_STYLE_LIST:I = 0xd

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final KEY_STRUCT_TEXT_POS:I = 0xe

.field private static final KEY_STYLE_FLAGS:I = 0x2

.field private static final KEY_TEXT_COLOR_RGBA:I = 0x6b

.field private static final KEY_WRAP_TEXT:I = 0x6

.field private static final LAST_PRIVATE_KEY:I = 0x6b

.field private static final LAST_PUBLIC_KEY:I = 0x10

.field public static final SEM_KEY_START_TIME:I = 0xbc8

.field public static final SEM_KEY_TEXT_INDEX:I = 0xbc9

.field private static final TAG:Ljava/lang/String; = "TimedText"


# instance fields
.field private mBackgroundColorRGBA:I

.field private mBlinkingPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayFlags:I

.field private mFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Font;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightColorRGBA:I

.field private mHighlightPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mHyperTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$HyperText;",
            ">;"
        }
    .end annotation
.end field

.field private mJustification:Landroid/media/TimedText$Justification;

.field private mKaraokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Karaoke;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mParcel:Landroid/os/Parcel;

.field private mScrollDelay:I

.field private mStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Style;",
            ">;"
        }
    .end annotation
.end field

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextChars:Ljava/lang/String;

.field private mWrapText:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    .line 115
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 116
    iput v1, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 117
    iput v1, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 118
    iput v1, p0, Landroid/media/TimedText;->mScrollDelay:I

    .line 119
    iput v1, p0, Landroid/media/TimedText;->mWrapText:I

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 122
    iput-object v1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 123
    iput-object v1, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 124
    iput-object v1, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 125
    iput-object v1, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 126
    iput-object v1, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 128
    iput-object v1, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 129
    iput-object v1, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 384
    .local v1, "tmp":[B
    iget-object v2, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 386
    iget-object v2, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-direct {p0, v2}, Landroid/media/TimedText;->parseParcel(Landroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 387
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 388
    const-string v0, "TimedText"

    const-string v2, "parseParcel() fails"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 116
    iput v0, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 117
    iput v0, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 118
    iput v0, p0, Landroid/media/TimedText;->mScrollDelay:I

    .line 119
    iput v0, p0, Landroid/media/TimedText;->mWrapText:I

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 122
    iput-object v0, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 123
    iput-object v0, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 124
    iput-object v0, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 125
    iput-object v0, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 126
    iput-object v0, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 128
    iput-object v0, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 129
    iput-object v0, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 400
    iput-object p1, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 401
    iput-object p2, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 402
    return-void
.end method

.method private containsKey(I)Z
    .registers 4
    .param p1, "key"    # I

    .line 790
    invoke-direct {p0, p1}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 791
    const/4 v0, 0x1

    return v0

    .line 793
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private getObject(I)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # I

    .line 814
    invoke-direct {p0, p1}, Landroid/media/TimedText;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 815
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 817
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isValidKey(I)Z
    .registers 4
    .param p1, "key"    # I

    .line 772
    const/16 v0, 0xbc9

    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    .line 773
    return v1

    .line 776
    :cond_6
    if-lt p1, v1, :cond_c

    const/16 v0, 0x10

    if-le p1, v0, :cond_15

    :cond_c
    const/16 v0, 0x65

    if-lt p1, v0, :cond_16

    const/16 v0, 0x6b

    if-le p1, v0, :cond_15

    goto :goto_16

    .line 780
    :cond_15
    return v1

    .line 778
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method private keySet()Ljava/util/Set;
    .registers 2

    .line 800
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized parseParcel(Landroid/os/Parcel;)Z
    .registers 12
    .param p1, "parcel"    # Landroid/os/Parcel;

    monitor-enter p0

    .line 459
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_17c

    if-nez v1, :cond_d

    .line 461
    monitor-exit p0

    return v0

    .line 467
    :cond_d
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 468
    .local v1, "textType":I
    const/16 v2, 0xbc9

    if-ne v1, v2, :cond_2c

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 470
    .local v2, "mTextIndex":I
    iget-object v3, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move v2, v3

    .line 473
    .local v2, "type":I
    goto :goto_2d

    .line 476
    .end local v2    # "type":I
    .end local p0    # "this":Landroid/media/TimedText;
    :cond_2c
    move v2, v1

    .line 479
    .restart local v2    # "type":I
    :goto_2d
    const/16 v3, 0x66

    if-ne v2, v3, :cond_71

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_17c

    move v2, v3

    .line 481
    const/4 v3, 0x7

    if-eq v2, v3, :cond_3b

    .line 482
    monitor-exit p0

    return v0

    .line 484
    .restart local p0    # "this":Landroid/media/TimedText;
    :cond_3b
    :try_start_3b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 485
    .local v3, "mStartTimeMs":I
    iget-object v4, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_17c

    move v2, v4

    .line 488
    const/16 v4, 0x10

    if-eq v2, v4, :cond_57

    .line 489
    monitor-exit p0

    return v0

    .line 492
    :cond_57
    :try_start_57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 493
    .local v4, "textLen":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 494
    .local v5, "text":[B
    if-eqz v5, :cond_6d

    array-length v6, v5

    if-nez v6, :cond_65

    goto :goto_6d

    .line 497
    :cond_65
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v6, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    goto :goto_8f

    .line 495
    .end local p0    # "this":Landroid/media/TimedText;
    :cond_6d
    :goto_6d
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    goto :goto_8f

    .line 500
    .end local v3    # "mStartTimeMs":I
    .end local v4    # "textLen":I
    .end local v5    # "text":[B
    :cond_71
    const/16 v3, 0x65

    if-eq v2, v3, :cond_8f

    .line 501
    const-string v3, "TimedText"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid timed text key found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_57 .. :try_end_8d} :catchall_17c

    .line 502
    monitor-exit p0

    return v0

    .line 500
    :cond_8f
    :goto_8f
    nop

    .line 505
    :goto_90
    :try_start_90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    if-lez v3, :cond_174

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 507
    .local v3, "key":I
    invoke-direct {p0, v3}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v4

    if-nez v4, :cond_ba

    .line 508
    const-string v4, "TimedText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid timed text key found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_90 .. :try_end_b8} :catchall_17c

    .line 509
    monitor-exit p0

    return v0

    .line 512
    :cond_ba
    const/4 v4, 0x0

    .line 514
    .local v4, "object":Ljava/lang/Object;
    packed-switch v3, :pswitch_data_180

    :pswitch_be
    goto/16 :goto_152

    .line 564
    :pswitch_c0
    :try_start_c0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 565
    .local v5, "horizontal":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 566
    .local v6, "vertical":I
    new-instance v7, Landroid/media/TimedText$Justification;

    invoke-direct {v7, v5, v6}, Landroid/media/TimedText$Justification;-><init>(II)V

    iput-object v7, p0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    .line 568
    move-object v4, v7

    .line 569
    goto/16 :goto_152

    .line 577
    .end local v5    # "horizontal":I
    .end local v6    # "vertical":I
    :pswitch_d2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 578
    .local v5, "top":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 579
    .local v6, "left":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 580
    .local v7, "bottom":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 581
    .local v8, "right":I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v6, v5, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 583
    goto/16 :goto_152

    .line 516
    .end local v5    # "top":I
    .end local v6    # "left":I
    .end local v7    # "bottom":I
    .end local v8    # "right":I
    :pswitch_eb
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readStyle(Landroid/os/Parcel;)V

    .line 517
    iget-object v5, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    move-object v4, v5

    .line 518
    goto/16 :goto_152

    .line 531
    :pswitch_f3
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readKaraoke(Landroid/os/Parcel;)V

    .line 532
    iget-object v5, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    move-object v4, v5

    .line 533
    goto :goto_152

    .line 536
    :pswitch_fa
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readHyperText(Landroid/os/Parcel;)V

    .line 537
    iget-object v5, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    move-object v4, v5

    .line 539
    goto :goto_152

    .line 526
    :pswitch_101
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readHighlight(Landroid/os/Parcel;)V

    .line 527
    iget-object v5, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    move-object v4, v5

    .line 528
    goto :goto_152

    .line 521
    :pswitch_108
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readFont(Landroid/os/Parcel;)V

    .line 522
    iget-object v5, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    move-object v4, v5

    .line 523
    goto :goto_152

    .line 542
    :pswitch_10f
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readBlinkingText(Landroid/os/Parcel;)V

    .line 543
    iget-object v5, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    move-object v4, v5

    .line 545
    goto :goto_152

    .line 548
    :pswitch_116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/media/TimedText;->mWrapText:I

    .line 549
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v4, v5

    .line 550
    goto :goto_152

    .line 586
    :pswitch_122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/media/TimedText;->mScrollDelay:I

    .line 587
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v4, v5

    .line 588
    goto :goto_152

    .line 553
    :pswitch_12e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 554
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v4, v5

    .line 555
    goto :goto_152

    .line 572
    :pswitch_13a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 573
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v4, v5

    .line 574
    goto :goto_152

    .line 558
    :pswitch_146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 559
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v4, v5

    .line 560
    nop

    .line 595
    :goto_152
    if-eqz v4, :cond_172

    .line 596
    iget-object v5, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_169

    .line 597
    iget-object v5, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    :cond_169
    iget-object v5, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .end local v3    # "key":I
    .end local v4    # "object":Ljava/lang/Object;
    :cond_172
    goto/16 :goto_90

    .line 604
    :cond_174
    iget-object v0, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_179
    .catchall {:try_start_c0 .. :try_end_179} :catchall_17c

    .line 605
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 458
    .end local v1    # "textType":I
    .end local v2    # "type":I
    .end local p1    # "parcel":Landroid/os/Parcel;
    :catchall_17c
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_180
    .packed-switch 0x1
        :pswitch_146
        :pswitch_be
        :pswitch_13a
        :pswitch_12e
        :pswitch_122
        :pswitch_116
        :pswitch_be
        :pswitch_10f
        :pswitch_108
        :pswitch_101
        :pswitch_fa
        :pswitch_f3
        :pswitch_eb
        :pswitch_d2
        :pswitch_c0
    .end packed-switch
.end method

.method private readBlinkingText(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 755
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 756
    .local v0, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 757
    .local v1, "endChar":I
    new-instance v2, Landroid/media/TimedText$CharPos;

    invoke-direct {v2, v0, v1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    .line 759
    .local v2, "blinkingPos":Landroid/media/TimedText$CharPos;
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    if-nez v3, :cond_18

    .line 760
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 762
    :cond_18
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    return-void
.end method

.method private readFont(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 675
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 677
    .local v0, "entryCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_31

    .line 678
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 679
    .local v2, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 681
    .local v3, "nameLen":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 682
    .local v4, "text":[B
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6, v3}, Ljava/lang/String;-><init>([BII)V

    .line 684
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Landroid/media/TimedText$Font;

    invoke-direct {v6, v2, v5}, Landroid/media/TimedText$Font;-><init>(ILjava/lang/String;)V

    .line 686
    .local v6, "font":Landroid/media/TimedText$Font;
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    if-nez v7, :cond_29

    .line 687
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 689
    :cond_29
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    .end local v2    # "id":I
    .end local v3    # "nameLen":I
    .end local v4    # "text":[B
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "font":Landroid/media/TimedText$Font;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 691
    .end local v1    # "i":I
    :cond_31
    return-void
.end method

.method private readHighlight(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 697
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 698
    .local v0, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 699
    .local v1, "endChar":I
    new-instance v2, Landroid/media/TimedText$CharPos;

    invoke-direct {v2, v0, v1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    .line 701
    .local v2, "pos":Landroid/media/TimedText$CharPos;
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    if-nez v3, :cond_18

    .line 702
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 704
    :cond_18
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    return-void
.end method

.method private readHyperText(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 732
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 733
    .local v0, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 735
    .local v1, "endChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 736
    .local v2, "len":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 737
    .local v3, "url":[B
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2}, Ljava/lang/String;-><init>([BII)V

    .line 739
    .local v4, "urlString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 740
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 741
    .local v6, "alt":[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6, v5, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v5, v7

    .line 742
    .local v5, "altString":Ljava/lang/String;
    new-instance v7, Landroid/media/TimedText$HyperText;

    invoke-direct {v7, v0, v1, v4, v5}, Landroid/media/TimedText$HyperText;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 745
    .local v7, "hyperText":Landroid/media/TimedText$HyperText;
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    if-nez v8, :cond_34

    .line 746
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 748
    :cond_34
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    return-void
.end method

.method private readKaraoke(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 711
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 713
    .local v0, "entryCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_2f

    .line 714
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 715
    .local v2, "startTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 716
    .local v3, "endTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 717
    .local v4, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 718
    .local v5, "endChar":I
    new-instance v6, Landroid/media/TimedText$Karaoke;

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/media/TimedText$Karaoke;-><init>(IIII)V

    .line 721
    .local v6, "kara":Landroid/media/TimedText$Karaoke;
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    if-nez v7, :cond_27

    .line 722
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 724
    :cond_27
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    .end local v2    # "startTimeMs":I
    .end local v3    # "endTimeMs":I
    .end local v4    # "startChar":I
    .end local v5    # "endChar":I
    .end local v6    # "kara":Landroid/media/TimedText$Karaoke;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 726
    .end local v1    # "i":I
    :cond_2f
    return-void
.end method

.method private readStyle(Landroid/os/Parcel;)V
    .registers 22
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 612
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 613
    .local v1, "endOfStyle":Z
    const/4 v2, -0x1

    .line 614
    .local v2, "startChar":I
    const/4 v3, -0x1

    .line 615
    .local v3, "endChar":I
    const/4 v4, -0x1

    .line 616
    .local v4, "fontId":I
    const/4 v5, 0x0

    .line 617
    .local v5, "isBold":Z
    const/4 v6, 0x0

    .line 618
    .local v6, "isItalic":Z
    const/4 v7, 0x0

    .line 619
    .local v7, "isUnderlined":Z
    const/4 v8, -0x1

    .line 620
    .local v8, "fontSize":I
    const/4 v9, -0x1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .line 621
    .end local v2    # "startChar":I
    .end local v3    # "endChar":I
    .end local v4    # "fontId":I
    .end local v5    # "isBold":Z
    .end local v6    # "isItalic":Z
    .end local v7    # "isUnderlined":Z
    .end local v8    # "fontSize":I
    .local v11, "startChar":I
    .local v12, "endChar":I
    .local v13, "fontId":I
    .local v14, "isBold":Z
    .local v15, "isItalic":Z
    .local v16, "isUnderlined":Z
    .local v17, "fontSize":I
    .local v18, "colorRGBA":I
    :goto_16
    if-nez v1, :cond_7d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    if-lez v2, :cond_7d

    .line 622
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 623
    .local v2, "key":I
    sparse-switch v2, :sswitch_data_a2

    .line 656
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    move-object/from16 v10, p1

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 657
    const/4 v1, 0x1

    goto :goto_7c

    .line 650
    :sswitch_32
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 651
    .end local v18    # "colorRGBA":I
    .local v3, "colorRGBA":I
    move-object/from16 v10, p1

    move/from16 v18, v3

    goto :goto_7c

    .line 646
    .end local v3    # "colorRGBA":I
    .restart local v18    # "colorRGBA":I
    :sswitch_3b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 647
    .end local v17    # "fontSize":I
    .local v3, "fontSize":I
    move-object/from16 v10, p1

    move/from16 v17, v3

    goto :goto_7c

    .line 633
    .end local v3    # "fontSize":I
    .restart local v17    # "fontSize":I
    :sswitch_44
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 634
    .end local v13    # "fontId":I
    .local v3, "fontId":I
    move-object/from16 v10, p1

    move v13, v3

    goto :goto_7c

    .line 629
    .end local v3    # "fontId":I
    .restart local v13    # "fontId":I
    :sswitch_4c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 630
    .end local v12    # "endChar":I
    .local v3, "endChar":I
    move-object/from16 v10, p1

    move v12, v3

    goto :goto_7c

    .line 625
    .end local v3    # "endChar":I
    .restart local v12    # "endChar":I
    :sswitch_54
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 626
    .end local v11    # "startChar":I
    .local v3, "startChar":I
    move-object/from16 v10, p1

    move v11, v3

    goto :goto_7c

    .line 637
    .end local v3    # "startChar":I
    .restart local v11    # "startChar":I
    :sswitch_5c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 640
    .local v3, "flags":I
    rem-int/lit8 v4, v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_68

    move v4, v6

    goto :goto_69

    :cond_68
    move v4, v5

    .line 641
    .end local v14    # "isBold":Z
    .local v4, "isBold":Z
    :goto_69
    rem-int/lit8 v7, v3, 0x4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_70

    move v7, v6

    goto :goto_71

    :cond_70
    move v7, v5

    .line 642
    .end local v15    # "isItalic":Z
    .local v7, "isItalic":Z
    :goto_71
    div-int/lit8 v8, v3, 0x4

    if-ne v8, v6, :cond_76

    move v5, v6

    .line 643
    .end local v16    # "isUnderlined":Z
    .local v5, "isUnderlined":Z
    :cond_76
    move-object/from16 v10, p1

    move v14, v4

    move/from16 v16, v5

    move v15, v7

    .line 661
    .end local v2    # "key":I
    .end local v3    # "flags":I
    .end local v4    # "isBold":Z
    .end local v5    # "isUnderlined":Z
    .end local v7    # "isItalic":Z
    .restart local v14    # "isBold":Z
    .restart local v15    # "isItalic":Z
    .restart local v16    # "isUnderlined":Z
    :goto_7c
    goto :goto_16

    .line 621
    :cond_7d
    move-object/from16 v10, p1

    .line 663
    new-instance v19, Landroid/media/TimedText$Style;

    move-object/from16 v2, v19

    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    invoke-direct/range {v2 .. v10}, Landroid/media/TimedText$Style;-><init>(IIIZZZII)V

    .line 665
    .local v2, "style":Landroid/media/TimedText$Style;
    iget-object v3, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    if-nez v3, :cond_9c

    .line 666
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 668
    :cond_9c
    iget-object v3, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    return-void

    :sswitch_data_a2
    .sparse-switch
        0x2 -> :sswitch_5c
        0x67 -> :sswitch_54
        0x68 -> :sswitch_4c
        0x69 -> :sswitch_44
        0x6a -> :sswitch_3b
        0x6b -> :sswitch_32
    .end sparse-switch
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 448
    iget-object v0, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 412
    iget-object v0, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    return-object v0
.end method

.method public semGetObject(I)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # I

    .line 431
    const/16 v0, 0xbc8

    if-ne p1, v0, :cond_a

    .line 432
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/media/TimedText;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 434
    :cond_a
    invoke-direct {p0, p1}, Landroid/media/TimedText;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
