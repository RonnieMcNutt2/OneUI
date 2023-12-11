.class public final Landroid/view/WindowInsets$Type;
.super Ljava/lang/Object;
.source "WindowInsets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInsets$Type$InsetsType;
    }
.end annotation


# static fields
.field static final CAPTION_BAR:I = 0x4

.field static final DEFAULT_VISIBLE:I = -0x9

.field static final DISPLAY_CUTOUT:I = 0x80

.field static final FIRST:I = 0x1

.field static final IME:I = 0x8

.field static final LAST:I = 0x200

.field static final MANDATORY_SYSTEM_GESTURES:I = 0x20

.field static final NAVIGATION_BARS:I = 0x2

.field static final SIZE:I = 0xa

.field static final STATUS_BARS:I = 0x1

.field static final SYSTEM_GESTURES:I = 0x10

.field static final SYSTEM_OVERLAYS:I = 0x200

.field static final TAPPABLE_ELEMENT:I = 0x40

.field static final WINDOW_DECOR:I = 0x100


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1562
    return-void
.end method

.method public static all()I
    .registers 1

    .line 1705
    const/4 v0, -0x1

    return v0
.end method

.method public static captionBar()I
    .registers 1

    .line 1590
    const/4 v0, 0x4

    return v0
.end method

.method public static defaultVisible()I
    .registers 1

    .line 1696
    const/16 v0, -0x9

    return v0
.end method

.method public static displayCutout()I
    .registers 1

    .line 1652
    const/16 v0, 0x80

    return v0
.end method

.method public static hasCompatSystemBars(I)Z
    .registers 2
    .param p0, "types"    # I

    .line 1714
    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static ime()I
    .registers 1

    .line 1597
    const/16 v0, 0x8

    return v0
.end method

.method static indexOf(I)I
    .registers 4
    .param p0, "type"    # I

    .line 1495
    sparse-switch p0, :sswitch_data_34

    .line 1517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type needs to be >= FIRST and <= LAST, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1515
    :sswitch_1d
    const/16 v0, 0x9

    return v0

    .line 1513
    :sswitch_20
    const/16 v0, 0x8

    return v0

    .line 1511
    :sswitch_23
    const/4 v0, 0x7

    return v0

    .line 1509
    :sswitch_25
    const/4 v0, 0x6

    return v0

    .line 1507
    :sswitch_27
    const/4 v0, 0x5

    return v0

    .line 1505
    :sswitch_29
    const/4 v0, 0x4

    return v0

    .line 1503
    :sswitch_2b
    const/4 v0, 0x3

    return v0

    .line 1501
    :sswitch_2d
    const/4 v0, 0x2

    return v0

    .line 1499
    :sswitch_2f
    const/4 v0, 0x1

    return v0

    .line 1497
    :sswitch_31
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_34
    .sparse-switch
        0x1 -> :sswitch_31
        0x2 -> :sswitch_2f
        0x4 -> :sswitch_2d
        0x8 -> :sswitch_2b
        0x10 -> :sswitch_29
        0x20 -> :sswitch_27
        0x40 -> :sswitch_25
        0x80 -> :sswitch_23
        0x100 -> :sswitch_20
        0x200 -> :sswitch_1d
    .end sparse-switch
.end method

.method public static mandatorySystemGestures()I
    .registers 1

    .line 1625
    const/16 v0, 0x20

    return v0
.end method

.method public static navigationBars()I
    .registers 1

    .line 1583
    const/4 v0, 0x2

    return v0
.end method

.method public static statusBars()I
    .registers 1

    .line 1576
    const/4 v0, 0x1

    return v0
.end method

.method public static systemBars()I
    .registers 1

    .line 1676
    const/16 v0, 0x207

    return v0
.end method

.method public static systemBarsWithoutCaptionBar()I
    .registers 1

    .line 1686
    const/16 v0, 0x203

    return v0
.end method

.method public static systemGestures()I
    .registers 1

    .line 1618
    const/16 v0, 0x10

    return v0
.end method

.method public static systemOverlays()I
    .registers 1

    .line 1668
    const/16 v0, 0x200

    return v0
.end method

.method public static tappableElement()I
    .registers 1

    .line 1632
    const/16 v0, 0x40

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 4
    .param p0, "types"    # I

    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1525
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_f

    .line 1526
    const-string/jumbo v1, "statusBars "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    :cond_f
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_19

    .line 1529
    const-string/jumbo v1, "navigationBars "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1531
    :cond_19
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_22

    .line 1532
    const-string v1, "captionBar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    :cond_22
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2b

    .line 1535
    const-string v1, "ime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    :cond_2b
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_35

    .line 1538
    const-string/jumbo v1, "systemGestures "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    :cond_35
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_3f

    .line 1541
    const-string/jumbo v1, "mandatorySystemGestures "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    :cond_3f
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_49

    .line 1544
    const-string/jumbo v1, "tappableElement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    :cond_49
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_52

    .line 1547
    const-string v1, "displayCutout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    :cond_52
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_5c

    .line 1550
    const-string/jumbo v1, "windowDecor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    :cond_5c
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_66

    .line 1553
    const-string/jumbo v1, "systemOverlays "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    :cond_66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_79

    .line 1556
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1558
    :cond_79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
