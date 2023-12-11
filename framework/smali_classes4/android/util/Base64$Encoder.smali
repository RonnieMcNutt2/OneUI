.class Landroid/util/Base64$Encoder;
.super Landroid/util/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Encoder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ENCODE:[B

.field private static final ENCODE_WEBSAFE:[B

.field public static final LINE_GROUPS:I = 0x13


# instance fields
.field private final alphabet:[B

.field private count:I

.field public final do_cr:Z

.field public final do_newline:Z

.field public final do_padding:Z

.field private final tail:[B

.field tailLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 544
    const-class v0, Landroid/util/Base64;

    .line 556
    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_14

    sput-object v1, Landroid/util/Base64$Encoder;->ENCODE:[B

    .line 567
    new-array v0, v0, [B

    fill-array-data v0, :array_38

    sput-object v0, Landroid/util/Base64$Encoder;->ENCODE_WEBSAFE:[B

    return-void

    nop

    :array_14
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_38
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 7
    .param p1, "flags"    # I
    .param p2, "output"    # [B

    .line 583
    invoke-direct {p0}, Landroid/util/Base64$Coder;-><init>()V

    .line 584
    iput-object p2, p0, Landroid/util/Base64$Encoder;->output:[B

    .line 586
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    iput-boolean v0, p0, Landroid/util/Base64$Encoder;->do_padding:Z

    .line 587
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    iput-boolean v0, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    .line 588
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v1

    :goto_1f
    iput-boolean v2, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    .line 589
    and-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_28

    sget-object v2, Landroid/util/Base64$Encoder;->ENCODE:[B

    goto :goto_2a

    :cond_28
    sget-object v2, Landroid/util/Base64$Encoder;->ENCODE_WEBSAFE:[B

    :goto_2a
    iput-object v2, p0, Landroid/util/Base64$Encoder;->alphabet:[B

    .line 591
    const/4 v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Landroid/util/Base64$Encoder;->tail:[B

    .line 592
    iput v1, p0, Landroid/util/Base64$Encoder;->tailLen:I

    .line 594
    if-eqz v0, :cond_38

    const/16 v0, 0x13

    goto :goto_39

    :cond_38
    const/4 v0, -0x1

    :goto_39
    iput v0, p0, Landroid/util/Base64$Encoder;->count:I

    .line 595
    return-void
.end method


# virtual methods
.method public maxOutputSize(I)I
    .registers 3
    .param p1, "len"    # I

    .line 602
    mul-int/lit8 v0, p1, 0x8

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .registers 23
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z

    .line 607
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/util/Base64$Encoder;->alphabet:[B

    .line 608
    .local v1, "alphabet":[B
    iget-object v2, v0, Landroid/util/Base64$Encoder;->output:[B

    .line 609
    .local v2, "output":[B
    const/4 v3, 0x0

    .line 610
    .local v3, "op":I
    iget v4, v0, Landroid/util/Base64$Encoder;->count:I

    .line 612
    .local v4, "count":I
    move/from16 v5, p2

    .line 613
    .local v5, "p":I
    add-int v6, p3, p2

    .line 614
    .end local p3    # "len":I
    .local v6, "len":I
    const/4 v7, -0x1

    .line 620
    .local v7, "v":I
    iget v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v8, :pswitch_data_200

    goto :goto_57

    .line 637
    :pswitch_16
    add-int/lit8 v8, v5, 0x1

    if-gt v8, v6, :cond_57

    .line 639
    iget-object v8, v0, Landroid/util/Base64$Encoder;->tail:[B

    aget-byte v11, v8, v9

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v11

    add-int/lit8 v11, v5, 0x1

    .end local v5    # "p":I
    .local v11, "p":I
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v7, v8, v5

    .line 642
    iput v9, v0, Landroid/util/Base64$Encoder;->tailLen:I

    move v5, v11

    goto :goto_57

    .line 626
    .end local v11    # "p":I
    .restart local v5    # "p":I
    :pswitch_35
    add-int/lit8 v8, v5, 0x2

    if-gt v8, v6, :cond_57

    .line 629
    iget-object v8, v0, Landroid/util/Base64$Encoder;->tail:[B

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/lit8 v11, v5, 0x1

    .end local v5    # "p":I
    .restart local v11    # "p":I
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v8

    add-int/lit8 v8, v11, 0x1

    .end local v11    # "p":I
    .local v8, "p":I
    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    or-int v7, v5, v11

    .line 632
    iput v9, v0, Landroid/util/Base64$Encoder;->tailLen:I

    move v5, v8

    goto :goto_57

    .line 623
    .end local v8    # "p":I
    .restart local v5    # "p":I
    :pswitch_56
    nop

    .line 647
    :cond_57
    :goto_57
    const/4 v8, -0x1

    const/16 v9, 0xd

    const/16 v11, 0xa

    if-eq v7, v8, :cond_98

    .line 648
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .local v8, "op":I
    shr-int/lit8 v12, v7, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v3

    .line 649
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v12, v7, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v8

    .line 650
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    shr-int/lit8 v12, v7, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v3

    .line 651
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    and-int/lit8 v12, v7, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v8

    .line 652
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_98

    .line 653
    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v8, :cond_91

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v9, v2, v3

    move v3, v8

    .line 654
    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_91
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v11, v2, v3

    .line 655
    const/16 v4, 0x13

    move v3, v8

    .line 664
    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_98
    :goto_98
    add-int/lit8 v8, v5, 0x3

    if-gt v8, v6, :cond_f0

    .line 665
    aget-byte v8, p1, v5

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/lit8 v12, v5, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v8, v12

    add-int/lit8 v12, v5, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int v7, v8, v12

    .line 668
    shr-int/lit8 v8, v7, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v1, v8

    aput-byte v8, v2, v3

    .line 669
    add-int/lit8 v8, v3, 0x1

    shr-int/lit8 v12, v7, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v8

    .line 670
    add-int/lit8 v8, v3, 0x2

    shr-int/lit8 v12, v7, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v8

    .line 671
    add-int/lit8 v8, v3, 0x3

    and-int/lit8 v12, v7, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v8

    .line 672
    add-int/lit8 v5, v5, 0x3

    .line 673
    add-int/lit8 v3, v3, 0x4

    .line 674
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_98

    .line 675
    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v8, :cond_e8

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v9, v2, v3

    move v3, v8

    .line 676
    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_e8
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v11, v2, v3

    .line 677
    const/16 v4, 0x13

    move v3, v8

    goto :goto_98

    .line 681
    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_f0
    if-eqz p4, :cond_1d0

    .line 687
    iget v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int v12, v5, v8

    add-int/lit8 v13, v6, -0x1

    const/16 v14, 0x3d

    if-ne v12, v13, :cond_146

    .line 688
    const/4 v12, 0x0

    .line 689
    .local v12, "t":I
    if-lez v8, :cond_106

    iget-object v13, v0, Landroid/util/Base64$Encoder;->tail:[B

    add-int/lit8 v15, v12, 0x1

    .end local v12    # "t":I
    .local v15, "t":I
    aget-byte v12, v13, v12

    goto :goto_10d

    .end local v15    # "t":I
    .restart local v12    # "t":I
    :cond_106
    add-int/lit8 v13, v5, 0x1

    .end local v5    # "p":I
    .local v13, "p":I
    aget-byte v5, p1, v5

    move v15, v12

    move v12, v5

    move v5, v13

    .end local v12    # "t":I
    .end local v13    # "p":I
    .restart local v5    # "p":I
    .restart local v15    # "t":I
    :goto_10d
    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v7, v12, 0x4

    .line 690
    sub-int/2addr v8, v15

    iput v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    .line 691
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    shr-int/lit8 v12, v7, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v3

    .line 692
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    and-int/lit8 v12, v7, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v8

    .line 693
    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_padding:Z

    if-eqz v8, :cond_132

    .line 694
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v14, v2, v3

    .line 695
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    aput-byte v14, v2, v8

    .line 697
    :cond_132
    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v8, :cond_144

    .line 698
    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v8, :cond_13f

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v9, v2, v3

    move v3, v8

    .line 699
    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_13f
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v11, v2, v3

    move v3, v8

    .line 701
    .end local v8    # "op":I
    .end local v15    # "t":I
    .restart local v3    # "op":I
    :cond_144
    goto/16 :goto_1ce

    :cond_146
    sub-int v12, v5, v8

    add-int/lit8 v13, v6, -0x2

    if-ne v12, v13, :cond_1b6

    .line 702
    const/4 v12, 0x0

    .line 703
    .restart local v12    # "t":I
    if-le v8, v10, :cond_156

    iget-object v13, v0, Landroid/util/Base64$Encoder;->tail:[B

    add-int/lit8 v15, v12, 0x1

    .end local v12    # "t":I
    .restart local v15    # "t":I
    aget-byte v12, v13, v12

    goto :goto_15d

    .end local v15    # "t":I
    .restart local v12    # "t":I
    :cond_156
    add-int/lit8 v13, v5, 0x1

    .end local v5    # "p":I
    .restart local v13    # "p":I
    aget-byte v5, p1, v5

    move v15, v12

    move v12, v5

    move v5, v13

    .end local v12    # "t":I
    .end local v13    # "p":I
    .restart local v5    # "p":I
    .restart local v15    # "t":I
    :goto_15d
    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v11

    .line 704
    if-lez v8, :cond_16b

    iget-object v13, v0, Landroid/util/Base64$Encoder;->tail:[B

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "t":I
    .local v16, "t":I
    aget-byte v13, v13, v15

    move/from16 v15, v16

    goto :goto_174

    .end local v16    # "t":I
    .restart local v15    # "t":I
    :cond_16b
    add-int/lit8 v13, v5, 0x1

    .end local v5    # "p":I
    .restart local v13    # "p":I
    aget-byte v5, p1, v5

    move/from16 v17, v13

    move v13, v5

    move/from16 v5, v17

    .end local v13    # "p":I
    .restart local v5    # "p":I
    :goto_174
    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x2

    or-int v7, v12, v13

    .line 705
    sub-int/2addr v8, v15

    iput v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    .line 706
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    shr-int/lit8 v12, v7, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v3

    .line 707
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v12, v7, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v8

    .line 708
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    and-int/lit8 v12, v7, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v3

    .line 709
    iget-boolean v3, v0, Landroid/util/Base64$Encoder;->do_padding:Z

    if-eqz v3, :cond_1a2

    .line 710
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    aput-byte v14, v2, v8

    move v8, v3

    .line 712
    .end local v3    # "op":I
    .restart local v8    # "op":I
    :cond_1a2
    iget-boolean v3, v0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v3, :cond_1b4

    .line 713
    iget-boolean v3, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v3, :cond_1af

    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    aput-byte v9, v2, v8

    move v8, v3

    .line 714
    .end local v3    # "op":I
    .restart local v8    # "op":I
    :cond_1af
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "op":I
    .restart local v3    # "op":I
    aput-byte v11, v2, v8

    move v8, v3

    .line 716
    .end local v3    # "op":I
    .end local v15    # "t":I
    .restart local v8    # "op":I
    :cond_1b4
    move v3, v8

    goto :goto_1ce

    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_1b6
    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v8, :cond_1ce

    if-lez v3, :cond_1ce

    const/16 v8, 0x13

    if-eq v4, v8, :cond_1ce

    .line 717
    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v8, :cond_1c9

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v9, v2, v3

    move v3, v8

    .line 718
    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_1c9
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "op":I
    .restart local v8    # "op":I
    aput-byte v11, v2, v3

    move v3, v8

    .line 721
    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_1ce
    :goto_1ce
    nop

    .line 722
    goto :goto_1fb

    .line 727
    :cond_1d0
    add-int/lit8 v8, v6, -0x1

    if-ne v5, v8, :cond_1e1

    .line 728
    iget-object v8, v0, Landroid/util/Base64$Encoder;->tail:[B

    iget v9, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v11, v9, 0x1

    iput v11, v0, Landroid/util/Base64$Encoder;->tailLen:I

    aget-byte v11, p1, v5

    aput-byte v11, v8, v9

    goto :goto_1fb

    .line 729
    :cond_1e1
    add-int/lit8 v8, v6, -0x2

    if-ne v5, v8, :cond_1fb

    .line 730
    iget-object v8, v0, Landroid/util/Base64$Encoder;->tail:[B

    iget v9, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v11, v9, 0x1

    iput v11, v0, Landroid/util/Base64$Encoder;->tailLen:I

    aget-byte v12, p1, v5

    aput-byte v12, v8, v9

    .line 731
    add-int/lit8 v9, v11, 0x1

    iput v9, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v9, v5, 0x1

    aget-byte v9, p1, v9

    aput-byte v9, v8, v11

    .line 735
    :cond_1fb
    :goto_1fb
    iput v3, v0, Landroid/util/Base64$Encoder;->op:I

    .line 736
    iput v4, v0, Landroid/util/Base64$Encoder;->count:I

    .line 738
    return v10

    :pswitch_data_200
    .packed-switch 0x0
        :pswitch_56
        :pswitch_35
        :pswitch_16
    .end packed-switch
.end method
