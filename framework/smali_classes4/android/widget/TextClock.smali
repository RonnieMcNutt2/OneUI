.class public Landroid/widget/TextClock;
.super Landroid/widget/TextView;
.source "TextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextClock$FormatChangeObserver;
    }
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/CharSequence;

.field private mDescFormat24:Ljava/lang/CharSequence;

.field private mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mShouldChooseFormat:Z

.field private mShouldRunTicker:Z

.field private mShowCurrentUserTime:Z

.field private mStopTicking:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHasSeconds(Landroid/widget/TextClock;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldChooseFormat(Landroid/widget/TextClock;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldRunTicker(Landroid/widget/TextClock;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStopTicking(Landroid/widget/TextClock;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/TextClock;->mStopTicking:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTime(Landroid/widget/TextClock;)Ljava/util/Calendar;
    .registers 1

    iget-object p0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeZone(Landroid/widget/TextClock;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmShouldChooseFormat(Landroid/widget/TextClock;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mchooseFormat(Landroid/widget/TextClock;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateTime(Landroid/widget/TextClock;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTimeChanged(Landroid/widget/TextClock;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 118
    const-string v0, "h:mm a"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    .line 133
    const-string v0, "H:mm"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 250
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 197
    new-instance v0, Landroid/widget/TextClock$1;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 214
    new-instance v0, Landroid/widget/TextClock$2;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    .line 251
    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    .line 252
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 283
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 286
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 197
    new-instance v0, Landroid/widget/TextClock$1;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 214
    new-instance v0, Landroid/widget/TextClock$2;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    .line 288
    sget-object v0, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 290
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/internal/R$styleable;->TextClock:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextClock;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 293
    const/4 v1, 0x0

    :try_start_23
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 294
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 295
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_3f

    .line 297
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    nop

    .line 300
    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    .line 301
    return-void

    .line 297
    :catchall_3f
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    throw v1
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .param p2, "c"    # Ljava/lang/CharSequence;

    .line 575
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    move-object v0, p2

    goto :goto_9

    :cond_6
    move-object v0, p1

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    return-object v0
.end method

.method private calcPersiCalendar(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 31
    .param p1, "calendar"    # Ljava/util/Calendar;

    .line 719
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 720
    .local v2, "adjustPrimaryCalendarStart":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 721
    .local v3, "adjustPrimaryCalendarEnd":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 722
    .local v4, "adjustSecondaryCalendarStart":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 724
    .local v5, "adjustSecondaryCalendarEnd":Ljava/util/Calendar;
    const/16 v6, 0x7ed

    const/4 v7, 0x2

    const/16 v8, 0x13

    invoke-virtual {v2, v6, v7, v8}, Ljava/util/Calendar;->set(III)V

    .line 725
    const/16 v6, 0x7ee

    const/16 v9, 0x14

    invoke-virtual {v3, v6, v7, v9}, Ljava/util/Calendar;->set(III)V

    .line 726
    const/16 v10, 0x7f1

    invoke-virtual {v4, v10, v7, v8}, Ljava/util/Calendar;->set(III)V

    .line 727
    const/16 v8, 0x7f2

    invoke-virtual {v5, v8, v7, v9}, Ljava/util/Calendar;->set(III)V

    .line 729
    const/4 v10, 0x0

    .line 730
    .local v10, "isFakeCalendar":Z
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x5

    const/4 v13, 0x1

    if-eqz v11, :cond_3c

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_48

    .line 731
    :cond_3c
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4c

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4c

    .line 732
    :cond_48
    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->add(II)V

    .line 733
    const/4 v10, 0x1

    .line 735
    :cond_4c
    new-instance v11, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-direct {v11, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 737
    .local v11, "today":Ljava/util/Date;
    invoke-virtual {v11}, Ljava/util/Date;->getYear()I

    move-result v14

    add-int/lit16 v14, v14, 0x76c

    .line 738
    .local v14, "todayYear":I
    invoke-virtual {v11}, Ljava/util/Date;->getMonth()I

    move-result v15

    add-int/2addr v15, v13

    .line 739
    .local v15, "todayMonth":I
    invoke-virtual {v11}, Ljava/util/Date;->getDate()I

    move-result v9

    .line 741
    .local v9, "todayDate":I
    const/16 v8, 0xc

    new-array v6, v8, [I

    .line 742
    .local v6, "cal1":[I
    new-array v8, v8, [I

    .line 744
    .local v8, "cal2":[I
    const/16 v19, 0x0

    aput v19, v6, v19

    .line 745
    const/16 v20, 0x1f

    aput v20, v6, v13

    .line 746
    const/16 v21, 0x3b

    aput v21, v6, v7

    .line 747
    const/16 v21, 0x5a

    const/4 v7, 0x3

    aput v21, v6, v7

    .line 748
    const/16 v21, 0x78

    const/16 v22, 0x4

    aput v21, v6, v22

    .line 749
    const/16 v21, 0x97

    aput v21, v6, v12

    .line 750
    const/16 v21, 0xb5

    const/16 v23, 0x6

    aput v21, v6, v23

    .line 751
    const/16 v21, 0xd4

    const/16 v24, 0x7

    aput v21, v6, v24

    .line 752
    const/16 v21, 0xf3

    const/16 v25, 0x8

    aput v21, v6, v25

    .line 753
    const/16 v21, 0x111

    const/16 v26, 0x9

    aput v21, v6, v26

    .line 754
    const/16 v21, 0x130

    const/16 v27, 0xa

    aput v21, v6, v27

    .line 755
    const/16 v21, 0x14e

    const/16 v28, 0xb

    aput v21, v6, v28

    .line 757
    aput v19, v8, v19

    .line 758
    aput v20, v8, v13

    .line 759
    const/16 v19, 0x3c

    const/16 v21, 0x2

    aput v19, v8, v21

    .line 760
    const/16 v19, 0x5b

    aput v19, v8, v7

    .line 761
    const/16 v19, 0x79

    aput v19, v8, v22

    .line 762
    const/16 v19, 0x98

    aput v19, v8, v12

    .line 763
    const/16 v12, 0xb6

    aput v12, v8, v23

    .line 764
    const/16 v12, 0xd5

    aput v12, v8, v24

    .line 765
    const/16 v12, 0xf4

    aput v12, v8, v25

    .line 766
    const/16 v12, 0x112

    aput v12, v8, v26

    .line 767
    const/16 v12, 0x131

    aput v12, v8, v27

    .line 768
    const/16 v12, 0x14f

    aput v12, v8, v28

    .line 770
    rem-int/lit8 v12, v14, 0x4

    const/16 v7, 0xba

    if-eqz v12, :cond_13e

    .line 771
    add-int/lit8 v12, v15, -0x1

    aget v12, v6, v12

    add-int/2addr v12, v9

    .line 773
    .local v12, "date":I
    const/16 v13, 0x4f

    if-le v12, v13, :cond_117

    .line 774
    add-int/lit8 v12, v12, -0x4f

    .line 775
    if-gt v12, v7, :cond_ff

    .line 776
    rem-int/lit8 v7, v12, 0x1f

    packed-switch v7, :pswitch_data_27e

    .line 782
    div-int/lit8 v7, v12, 0x1f

    const/4 v13, 0x1

    add-int/2addr v7, v13

    .line 783
    .local v7, "month":I
    rem-int/lit8 v12, v12, 0x1f

    goto :goto_fb

    .line 778
    .end local v7    # "month":I
    :pswitch_f6
    div-int/lit8 v7, v12, 0x1f

    .line 779
    .restart local v7    # "month":I
    const/16 v12, 0x1f

    .line 780
    nop

    .line 786
    :goto_fb
    add-int/lit16 v13, v14, -0x26d

    .local v13, "year":I
    goto/16 :goto_196

    .line 788
    .end local v7    # "month":I
    .end local v13    # "year":I
    :cond_ff
    sub-int/2addr v12, v7

    .line 790
    rem-int/lit8 v7, v12, 0x1e

    packed-switch v7, :pswitch_data_284

    .line 796
    div-int/lit8 v7, v12, 0x1e

    add-int/lit8 v7, v7, 0x7

    .line 797
    .restart local v7    # "month":I
    rem-int/lit8 v12, v12, 0x1e

    goto :goto_113

    .line 792
    .end local v7    # "month":I
    :pswitch_10c
    div-int/lit8 v7, v12, 0x1e

    add-int/lit8 v7, v7, 0x6

    .line 793
    .restart local v7    # "month":I
    const/16 v12, 0x1e

    .line 794
    nop

    .line 800
    :goto_113
    add-int/lit16 v13, v14, -0x26d

    .restart local v13    # "year":I
    goto/16 :goto_196

    .line 803
    .end local v7    # "month":I
    .end local v13    # "year":I
    :cond_117
    const/16 v7, 0x7cc

    if-le v14, v7, :cond_123

    rem-int/lit8 v7, v14, 0x4

    const/4 v13, 0x1

    if-ne v7, v13, :cond_123

    .line 804
    const/16 v7, 0xb

    .local v7, "ld":I
    goto :goto_125

    .line 806
    .end local v7    # "ld":I
    :cond_123
    const/16 v7, 0xa

    .line 808
    .restart local v7    # "ld":I
    :goto_125
    add-int/2addr v12, v7

    .line 810
    rem-int/lit8 v13, v12, 0x1e

    packed-switch v13, :pswitch_data_28a

    .line 816
    div-int/lit8 v13, v12, 0x1e

    add-int/lit8 v13, v13, 0xa

    .line 817
    .local v13, "month":I
    rem-int/lit8 v12, v12, 0x1e

    goto :goto_139

    .line 812
    .end local v13    # "month":I
    :pswitch_132
    div-int/lit8 v13, v12, 0x1e

    add-int/lit8 v13, v13, 0x9

    .line 813
    .restart local v13    # "month":I
    const/16 v12, 0x1e

    .line 814
    nop

    .line 820
    :goto_139
    add-int/lit16 v1, v14, -0x26e

    move v7, v13

    move v13, v1

    .local v1, "year":I
    goto :goto_196

    .line 823
    .end local v1    # "year":I
    .end local v7    # "ld":I
    .end local v12    # "date":I
    .end local v13    # "month":I
    :cond_13e
    add-int/lit8 v1, v15, -0x1

    aget v1, v8, v1

    add-int/2addr v1, v9

    .line 825
    .local v1, "date":I
    const/16 v12, 0x7cc

    if-lt v14, v12, :cond_14a

    .line 826
    const/16 v12, 0x4f

    .local v12, "ld":I
    goto :goto_14c

    .line 828
    .end local v12    # "ld":I
    :cond_14a
    const/16 v12, 0x50

    .line 830
    .restart local v12    # "ld":I
    :goto_14c
    if-le v1, v12, :cond_17e

    .line 831
    sub-int/2addr v1, v12

    .line 833
    if-gt v1, v7, :cond_166

    .line 834
    rem-int/lit8 v7, v1, 0x1f

    packed-switch v7, :pswitch_data_290

    .line 840
    div-int/lit8 v7, v1, 0x1f

    const/4 v13, 0x1

    add-int/2addr v7, v13

    .line 841
    .local v7, "month":I
    rem-int/lit8 v1, v1, 0x1f

    goto :goto_162

    .line 836
    .end local v7    # "month":I
    :pswitch_15d
    div-int/lit8 v7, v1, 0x1f

    .line 837
    .restart local v7    # "month":I
    const/16 v1, 0x1f

    .line 838
    nop

    .line 844
    :goto_162
    add-int/lit16 v13, v14, -0x26d

    move v12, v1

    .local v13, "year":I
    goto :goto_196

    .line 846
    .end local v7    # "month":I
    .end local v13    # "year":I
    :cond_166
    sub-int/2addr v1, v7

    .line 848
    rem-int/lit8 v7, v1, 0x1e

    packed-switch v7, :pswitch_data_296

    .line 854
    div-int/lit8 v7, v1, 0x1e

    add-int/lit8 v7, v7, 0x7

    .line 855
    .restart local v7    # "month":I
    rem-int/lit8 v1, v1, 0x1e

    goto :goto_17a

    .line 850
    .end local v7    # "month":I
    :pswitch_173
    div-int/lit8 v7, v1, 0x1e

    add-int/lit8 v7, v7, 0x6

    .line 851
    .restart local v7    # "month":I
    const/16 v1, 0x1e

    .line 852
    nop

    .line 858
    :goto_17a
    add-int/lit16 v13, v14, -0x26d

    move v12, v1

    .restart local v13    # "year":I
    goto :goto_196

    .line 863
    .end local v7    # "month":I
    .end local v13    # "year":I
    :cond_17e
    add-int/lit8 v1, v1, 0xa

    .line 865
    rem-int/lit8 v7, v1, 0x1e

    packed-switch v7, :pswitch_data_29c

    .line 871
    div-int/lit8 v7, v1, 0x1e

    add-int/lit8 v7, v7, 0xa

    .line 872
    .restart local v7    # "month":I
    rem-int/lit8 v1, v1, 0x1e

    goto :goto_193

    .line 867
    .end local v7    # "month":I
    :pswitch_18c
    div-int/lit8 v7, v1, 0x1e

    add-int/lit8 v7, v7, 0x9

    .line 868
    .restart local v7    # "month":I
    const/16 v1, 0x1e

    .line 869
    nop

    .line 875
    :goto_193
    add-int/lit16 v13, v14, -0x26e

    move v12, v1

    .line 880
    .end local v1    # "date":I
    .local v12, "date":I
    .restart local v13    # "year":I
    :goto_196
    if-nez v10, :cond_1a9

    .line 881
    const/16 v1, 0x7ee

    if-eq v14, v1, :cond_1a0

    const/16 v1, 0x7f2

    if-ne v14, v1, :cond_1a9

    :cond_1a0
    const/4 v1, 0x3

    if-ne v15, v1, :cond_1a9

    const/16 v1, 0x14

    if-ne v9, v1, :cond_1a9

    .line 882
    add-int/lit8 v12, v12, 0x1

    .line 886
    :cond_1a9
    const-string v1, ""

    .line 887
    .local v1, "monthStr":Ljava/lang/String;
    const/16 v16, 0x0

    .line 889
    .local v16, "isLanguageEnglish":Z
    move-object/from16 v17, v1

    .end local v1    # "monthStr":Ljava/lang/String;
    .local v17, "monthStr":Ljava/lang/String;
    iget-object v1, v0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c7

    iget-object v1, v0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c7

    .line 890
    const/16 v16, 0x1

    .line 893
    :cond_1c7
    packed-switch v7, :pswitch_data_2a2

    move-object/from16 v1, v17

    goto/16 :goto_247

    .line 928
    :pswitch_1ce
    if-eqz v16, :cond_1d3

    const-string v0, "Esfand"

    goto :goto_1d6

    :cond_1d3
    const-string/jumbo v0, "\u0627\u0633??\u062f"

    :goto_1d6
    move-object v1, v0

    .end local v17    # "monthStr":Ljava/lang/String;
    .restart local v1    # "monthStr":Ljava/lang/String;
    goto/16 :goto_247

    .line 925
    .end local v1    # "monthStr":Ljava/lang/String;
    .restart local v17    # "monthStr":Ljava/lang/String;
    :pswitch_1d9
    if-eqz v16, :cond_1de

    const-string v0, "Bahman"

    goto :goto_1e1

    :cond_1de
    const-string/jumbo v0, "\u0628???"

    :goto_1e1
    move-object v1, v0

    .line 926
    .end local v17    # "monthStr":Ljava/lang/String;
    .restart local v1    # "monthStr":Ljava/lang/String;
    goto/16 :goto_247

    .line 922
    .end local v1    # "monthStr":Ljava/lang/String;
    .restart local v17    # "monthStr":Ljava/lang/String;
    :pswitch_1e4
    if-eqz v16, :cond_1e9

    const-string v0, "Dey"

    goto :goto_1ec

    :cond_1e9
    const-string/jumbo v0, "\u062f?"

    :goto_1ec
    move-object v1, v0

    .line 923
    .end local v17    # "monthStr":Ljava/lang/String;
    .restart local v1    # "monthStr":Ljava/lang/String;
    goto/16 :goto_247

    .line 919
    .end local v1    # "monthStr":Ljava/lang/String;
    .restart local v17    # "monthStr":Ljava/lang/String;
    :pswitch_1ef
    if-eqz v16, :cond_1f4

    const-string v0, "Azar"

    goto :goto_1f7

    :cond_1f4
    const-string/jumbo v0, "\u0622\u0630\u0631"

    :goto_1f7
    move-object v1, v0

    .line 920
    .end local v17    # "monthStr":Ljava/lang/String;
    .restart local v1    # "monthStr":Ljava/lang/String;
    goto/16 :goto_247

    .line 916
    .end local v1    # "monthStr":Ljava/lang/String;
    .restart local v17    # "monthStr":Ljava/lang/String;
    :pswitch_1fa
    if-eqz v16, :cond_1ff

    const-string v0, "Aban"

    goto :goto_202

    :cond_1ff
    const-string/jumbo v0, "\u0622\u0628\u0627?"

    :goto_202
    move-object v1, v0

    .line 917
    .end local v17    # "monthStr":Ljava/lang/String;
    .restart local v1    # "monthStr":Ljava/lang/String;
    goto :goto_247

    .line 913
    .end local v1    # "monthStr":Ljava/lang/String;
    .restart local v17    # "monthStr":Ljava/lang/String;
    :pswitch_204
    if-eqz v16, :cond_209

    const-string v0, "Mehr"

    goto :goto_20b

    :cond_209
    const-string v0, "??\u0631"

    :goto_20b
    move-object v1, v0

    .line 914
    .end local v17    # "monthStr":Ljava/lang/String;
    .restart local v1    # "monthStr":Ljava/lang/String;
    goto :goto_247

    .line 910
    .end local v1    # "monthStr":Ljava/lang/String;
    .restart local v17    # "monthStr":Ljava/lang/String;
    :pswitch_20d
    if-eqz v16, :cond_212

    const-string v0, "Shahrivar"

    goto :goto_215

    :cond_212
    const-string/jumbo v0, "\u0634?\u0631??\u0631"

    :goto_215
    move-object v1, v0

    .line 911
    .end local v17    # "monthStr":Ljava/lang/String;
    .restart local v1    # "monthStr":Ljava/lang/String;
    goto :goto_247

    .line 907
    .end local v1    # "monthStr":Ljava/lang/String;
    .restart local v17    # "monthStr":Ljava/lang/String;
    :pswitch_217
    if-eqz v16, :cond_21c

    const-string v0, "Mordad"

    goto :goto_21e

    :cond_21c
    const-string v0, "?\u0631\u062f\u0627\u062f"

    :goto_21e
    move-object v1, v0

    .line 908
    .end local v17    # "monthStr":Ljava/lang/String;
    .restart local v1    # "monthStr":Ljava/lang/String;
    goto :goto_247

    .line 904
    .end local v1    # "monthStr":Ljava/lang/String;
    .restart local v17    # "monthStr":Ljava/lang/String;
    :pswitch_220
    if-eqz v16, :cond_225

    const-string v0, "Tir"

    goto :goto_228

    :cond_225
    const-string/jumbo v0, "\u062a?\u0631"

    :goto_228
    move-object v1, v0

    .line 905
    .end local v17    # "monthStr":Ljava/lang/String;
    .restart local v1    # "monthStr":Ljava/lang/String;
    goto :goto_247

    .line 901
    .end local v1    # "monthStr":Ljava/lang/String;
    .restart local v17    # "monthStr":Ljava/lang/String;
    :pswitch_22a
    if-eqz v16, :cond_22f

    const-string v0, "Khordad"

    goto :goto_232

    :cond_22f
    const-string/jumbo v0, "\u062e\u0631\u062f\u0627\u062f"

    :goto_232
    move-object v1, v0

    .line 902
    .end local v17    # "monthStr":Ljava/lang/String;
    .restart local v1    # "monthStr":Ljava/lang/String;
    goto :goto_247

    .line 898
    .end local v1    # "monthStr":Ljava/lang/String;
    .restart local v17    # "monthStr":Ljava/lang/String;
    :pswitch_234
    if-eqz v16, :cond_239

    const-string v0, "Ordibehesht"

    goto :goto_23c

    :cond_239
    const-string/jumbo v0, "\u0627\u0631\u062f?\u0628?\u0634\u062a"

    :goto_23c
    move-object v1, v0

    .line 899
    .end local v17    # "monthStr":Ljava/lang/String;
    .restart local v1    # "monthStr":Ljava/lang/String;
    goto :goto_247

    .line 895
    .end local v1    # "monthStr":Ljava/lang/String;
    .restart local v17    # "monthStr":Ljava/lang/String;
    :pswitch_23e
    if-eqz v16, :cond_243

    const-string v0, "Farvardin"

    goto :goto_245

    :cond_243
    const-string v0, "?\u0631?\u0631\u062f??"

    :goto_245
    move-object v1, v0

    .line 896
    .end local v17    # "monthStr":Ljava/lang/String;
    .restart local v1    # "monthStr":Ljava/lang/String;
    nop

    .line 931
    :goto_247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v2

    .end local v2    # "adjustPrimaryCalendarStart":Ljava/util/Calendar;
    .local v17, "adjustPrimaryCalendarStart":Ljava/util/Calendar;
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v3

    .end local v3    # "adjustPrimaryCalendarEnd":Ljava/util/Calendar;
    .local v18, "adjustPrimaryCalendarEnd":Ljava/util/Calendar;
    const-string v3, "%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_27e
    .packed-switch 0x0
        :pswitch_f6
    .end packed-switch

    :pswitch_data_284
    .packed-switch 0x0
        :pswitch_10c
    .end packed-switch

    :pswitch_data_28a
    .packed-switch 0x0
        :pswitch_132
    .end packed-switch

    :pswitch_data_290
    .packed-switch 0x0
        :pswitch_15d
    .end packed-switch

    :pswitch_data_296
    .packed-switch 0x0
        :pswitch_173
    .end packed-switch

    :pswitch_data_29c
    .packed-switch 0x0
        :pswitch_18c
    .end packed-switch

    :pswitch_data_2a2
    .packed-switch 0x1
        :pswitch_23e
        :pswitch_234
        :pswitch_22a
        :pswitch_220
        :pswitch_217
        :pswitch_20d
        :pswitch_204
        :pswitch_1fa
        :pswitch_1ef
        :pswitch_1e4
        :pswitch_1d9
        :pswitch_1ce
    .end packed-switch
.end method

.method private chooseFormat()V
    .registers 5

    .line 547
    invoke-virtual {p0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v0

    .line 549
    .local v0, "format24Requested":Z
    if-eqz v0, :cond_21

    .line 550
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    const-string v3, "Hm"

    invoke-direct {p0, v3}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    .line 551
    iget-object v2, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v1}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_3b

    .line 553
    :cond_21
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    const-string v3, "hm"

    invoke-direct {p0, v3}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    .line 554
    iget-object v2, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v1}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    .line 557
    :goto_3b
    iget-boolean v1, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    .line 558
    .local v1, "hadSeconds":Z
    iget-object v2, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    .line 560
    iget-boolean v3, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    if-eqz v3, :cond_50

    if-eq v1, v2, :cond_50

    .line 561
    iget-object v2, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 563
    :cond_50
    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .registers 3
    .param p1, "timeZone"    # Ljava/lang/String;

    .line 316
    if-eqz p1, :cond_d

    .line 317
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    goto :goto_13

    .line 319
    :cond_d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    .line 321
    :goto_13
    return-void
.end method

.method private getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "skeleton"    # Ljava/lang/String;

    .line 566
    nop

    .line 567
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 566
    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 568
    .local v0, "dtpg":Landroid/icu/text/DateTimePatternGenerator;
    invoke-virtual {v0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private init()V
    .registers 2

    .line 304
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    if-nez v0, :cond_c

    .line 305
    const-string v0, "hm"

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 307
    :cond_c
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_18

    .line 308
    const-string v0, "Hm"

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 311
    :cond_18
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    .line 312
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 313
    return-void
.end method

.method private onTimeChanged()V
    .registers 4

    .line 688
    iget-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 690
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "per"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 691
    iget-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->calcPersiCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 693
    :cond_2a
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;)V

    .line 695
    :goto_35
    iget-object v0, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 696
    return-void
.end method

.method private registerObserver()V
    .registers 6

    .line 648
    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-eqz v0, :cond_37

    .line 649
    iget-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_13

    .line 650
    new-instance v0, Landroid/widget/TextClock$FormatChangeObserver;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/TextClock$FormatChangeObserver;-><init>(Landroid/widget/TextClock;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 652
    :cond_13
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 653
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 654
    .local v1, "uri":Landroid/net/Uri;
    iget-boolean v2, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2e

    .line 655
    iget-object v2, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_37

    .line 666
    :cond_2e
    iget-object v2, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 667
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 666
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 670
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_37
    :goto_37
    return-void
.end method

.method private registerReceiver()V
    .registers 8

    .line 631
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 633
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 634
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v5, 0x0

    .line 644
    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 643
    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 645
    return-void
.end method

.method private unregisterObserver()V
    .registers 3

    .line 677
    iget-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_11

    .line 678
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 679
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 681
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_11
    return-void
.end method

.method private unregisterReceiver()V
    .registers 3

    .line 673
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 674
    return-void
.end method


# virtual methods
.method public disableClockTick()V
    .registers 2

    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mStopTicking:Z

    .line 628
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 6
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .line 701
    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 703
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v0

    .line 704
    .local v0, "s":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    move-object v2, v1

    goto :goto_10

    :cond_c
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_10
    const-string v3, "format12Hour"

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v0

    .line 707
    if-nez v0, :cond_1d

    move-object v2, v1

    goto :goto_21

    :cond_1d
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_21
    const-string v3, "format24Hour"

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v2, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    if-nez v2, :cond_2b

    goto :goto_2f

    :cond_2b
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2f
    const-string v2, "format"

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v1, "hasSeconds"

    iget-boolean v2, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 710
    return-void
.end method

.method public getFormat()Ljava/lang/CharSequence;
    .registers 2

    .line 539
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat12Hour()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 336
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat24Hour()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 396
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .registers 2

    .line 505
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .registers 3

    .line 486
    iget-boolean v0, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_11

    .line 487
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 489
    :cond_11
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 580
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 582
    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-nez v0, :cond_15

    .line 583
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    .line 585
    invoke-direct {p0}, Landroid/widget/TextClock;->registerReceiver()V

    .line 586
    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    .line 588
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    .line 590
    :cond_15
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 611
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 613
    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-eqz v0, :cond_10

    .line 614
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterReceiver()V

    .line 615
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    .line 617
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    .line 619
    :cond_10
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .registers 4
    .param p1, "isVisible"    # Z

    .line 594
    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    .line 596
    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    if-eqz p1, :cond_1c

    .line 597
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    .line 598
    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    if-eqz v0, :cond_16

    .line 599
    iput-boolean v1, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    .line 600
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 602
    :cond_16
    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_27

    .line 603
    :cond_1c
    if-eqz v0, :cond_27

    if-nez p1, :cond_27

    .line 604
    iput-boolean v1, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    .line 605
    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 607
    :cond_27
    :goto_27
    return-void
.end method

.method public refreshTime()V
    .registers 1

    .line 462
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 463
    invoke-virtual {p0}, Landroid/widget/TextClock;->invalidate()V

    .line 464
    return-void
.end method

.method public setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/CharSequence;

    .line 377
    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    .line 379
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 380
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 381
    return-void
.end method

.method public setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/CharSequence;

    .line 436
    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    .line 438
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 439
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 440
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 366
    iput-object p1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 368
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 369
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 370
    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 425
    iput-object p1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 427
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 428
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 429
    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .registers 2
    .param p1, "showCurrentUserTime"    # Z

    .line 450
    iput-boolean p1, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    .line 452
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 453
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 454
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    .line 455
    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    .line 456
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 2
    .param p1, "timeZone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 525
    iput-object p1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    .line 527
    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    .line 528
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 529
    return-void
.end method
