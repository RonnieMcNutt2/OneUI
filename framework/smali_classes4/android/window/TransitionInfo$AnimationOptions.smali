.class public final Landroid/window/TransitionInfo$AnimationOptions;
.super Ljava/lang/Object;
.source "TransitionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimationOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionInfo$AnimationOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimations:I

.field private mBackgroundColor:I

.field private mCustomActivityCloseTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

.field private mCustomActivityOpenTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

.field private mEnterResId:I

.field private mExitResId:I

.field private mOverrideTaskTransition:Z

.field private mPackageName:Ljava/lang/String;

.field private mThumbnail:Landroid/hardware/HardwareBuffer;

.field private final mTransitionBounds:Landroid/graphics/Rect;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1781
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions$1;

    invoke-direct {v0}, Landroid/window/TransitionInfo$AnimationOptions$1;-><init>()V

    sput-object v0, Landroid/window/TransitionInfo$AnimationOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3
    .param p1, "type"    # I

    .line 1616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1608
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    .line 1617
    iput p1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    .line 1618
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1608
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    .line 1621
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    .line 1622
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    .line 1623
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    .line 1624
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mBackgroundColor:I

    .line 1625
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    .line 1626
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    .line 1627
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 1628
    sget-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mThumbnail:Landroid/hardware/HardwareBuffer;

    .line 1629
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mAnimations:I

    .line 1630
    sget-object v0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityOpenTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    .line 1631
    sget-object v0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityCloseTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    .line 1632
    return-void
.end method

.method public static makeAnimOptionsFromLayoutParameters(Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;
    .registers 3
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 1643
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 1644
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    .line 1645
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mAnimations:I

    .line 1646
    return-object v0
.end method

.method public static makeClipRevealAnimOptions(IIII)Landroid/window/TransitionInfo$AnimationOptions;
    .registers 8
    .param p0, "startX"    # I
    .param p1, "startY"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1683
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 1684
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    iget-object v1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    add-int v2, p0, p2

    add-int v3, p1, p3

    invoke-virtual {v1, p0, p1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1685
    return-object v0
.end method

.method public static makeCommonAnimOptions(Ljava/lang/String;)Landroid/window/TransitionInfo$AnimationOptions;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1636
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 1637
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    iput-object p0, v0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    .line 1638
    return-object v0
.end method

.method public static makeCrossProfileAnimOptions()Landroid/window/TransitionInfo$AnimationOptions;
    .registers 2

    .line 1705
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 1706
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    return-object v0
.end method

.method public static makeCustomAnimOptions(Ljava/lang/String;IIIZ)Landroid/window/TransitionInfo$AnimationOptions;
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "overrideTaskTransition"    # Z

    .line 1672
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 1673
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    iput-object p0, v0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    .line 1674
    iput p1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    .line 1675
    iput p2, v0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    .line 1676
    iput p3, v0, Landroid/window/TransitionInfo$AnimationOptions;->mBackgroundColor:I

    .line 1677
    iput-boolean p4, v0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    .line 1678
    return-object v0
.end method

.method public static makeCustomDisplayChangeAnimOptions(II)Landroid/window/TransitionInfo$AnimationOptions;
    .registers 4
    .param p0, "enterResId"    # I
    .param p1, "exitResId"    # I

    .line 1717
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 1718
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    iput p0, v0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    .line 1719
    iput p1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    .line 1720
    return-object v0
.end method

.method public static makeScaleUpAnimOptions(IIII)Landroid/window/TransitionInfo$AnimationOptions;
    .registers 8
    .param p0, "startX"    # I
    .param p1, "startY"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1690
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 1691
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    iget-object v1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    add-int v2, p0, p2

    add-int v3, p1, p3

    invoke-virtual {v1, p0, p1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1692
    return-object v0
.end method

.method public static makeSceneTransitionAnimOptions()Landroid/window/TransitionInfo$AnimationOptions;
    .registers 2

    .line 1710
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 1711
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    return-object v0
.end method

.method public static makeThumbnailAnimOptions(Landroid/hardware/HardwareBuffer;IIZ)Landroid/window/TransitionInfo$AnimationOptions;
    .registers 6
    .param p0, "srcThumb"    # Landroid/hardware/HardwareBuffer;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "scaleUp"    # Z

    .line 1697
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    .line 1698
    if-eqz p3, :cond_6

    const/4 v1, 0x3

    goto :goto_7

    :cond_6
    const/4 v1, 0x4

    :goto_7
    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 1699
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    iget-object v1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1700
    iput-object p0, v0, Landroid/window/TransitionInfo$AnimationOptions;->mThumbnail:Landroid/hardware/HardwareBuffer;

    .line 1701
    return-object v0
.end method

.method private static typeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "mode"    # I

    .line 1802
    sparse-switch p0, :sswitch_data_30

    .line 1809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1808
    :sswitch_1d
    const-string v0, "ANIM_OPEN_CROSS_PROFILE_APPS"

    return-object v0

    .line 1804
    :sswitch_20
    const-string v0, "ANIM_CLIP_REVEAL"

    return-object v0

    .line 1807
    :sswitch_23
    const-string v0, "ANIM_THUMBNAIL_SCALE_DOWN"

    return-object v0

    .line 1806
    :sswitch_26
    const-string v0, "ANIM_THUMBNAIL_SCALE_UP"

    return-object v0

    .line 1805
    :sswitch_29
    const-string v0, "ANIM_SCALE_UP"

    return-object v0

    .line 1803
    :sswitch_2c
    const-string v0, "ANIM_CUSTOM"

    return-object v0

    nop

    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_2c
        0x2 -> :sswitch_29
        0x3 -> :sswitch_26
        0x4 -> :sswitch_23
        0xb -> :sswitch_20
        0xc -> :sswitch_1d
    .end sparse-switch
.end method


# virtual methods
.method public addCustomActivityTransition(ZIII)V
    .registers 7
    .param p1, "isOpen"    # Z
    .param p2, "enterResId"    # I
    .param p3, "exitResId"    # I
    .param p4, "backgroundColor"    # I

    .line 1657
    if-eqz p1, :cond_5

    .line 1658
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityOpenTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityCloseTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    .line 1659
    .local v0, "customTransition":Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;
    :goto_7
    if-nez v0, :cond_16

    .line 1660
    new-instance v1, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    invoke-direct {v1}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;-><init>()V

    move-object v0, v1

    .line 1661
    if-eqz p1, :cond_14

    .line 1662
    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityOpenTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    goto :goto_16

    .line 1664
    :cond_14
    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityCloseTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    .line 1667
    :cond_16
    :goto_16
    invoke-virtual {v0, p2, p3, p4}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->addCustomActivityTransition(III)V

    .line 1668
    return-void
.end method

.method public addOptionsFromLayoutParameters(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 1651
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mAnimations:I

    .line 1652
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 1797
    const/4 v0, 0x0

    return v0
.end method

.method public getAnimations()I
    .registers 2

    .line 1757
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mAnimations:I

    return v0
.end method

.method public getBackgroundColor()I
    .registers 2

    .line 1737
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mBackgroundColor:I

    return v0
.end method

.method public getCustomActivityTransition(Z)Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;
    .registers 3
    .param p1, "open"    # Z

    .line 1762
    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityOpenTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityCloseTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    :goto_7
    return-object v0
.end method

.method public getEnterResId()I
    .registers 2

    .line 1729
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    return v0
.end method

.method public getExitResId()I
    .registers 2

    .line 1733
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    return v0
.end method

.method public getOverrideTaskTransition()Z
    .registers 2

    .line 1741
    iget-boolean v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 1745
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Landroid/hardware/HardwareBuffer;
    .registers 2

    .line 1753
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mThumbnail:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public getTransitionBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1749
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 1725
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ AnimationOptions type= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    invoke-static {v1}, Landroid/window/TransitionInfo$AnimationOptions;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " override="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1767
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1768
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1769
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1770
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1771
    iget-boolean v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1772
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1773
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1774
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mThumbnail:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1775
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mAnimations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1776
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityOpenTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1777
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityCloseTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1778
    return-void
.end method
