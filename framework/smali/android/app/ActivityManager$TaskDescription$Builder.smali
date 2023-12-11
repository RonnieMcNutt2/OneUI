.class public final Landroid/app/ActivityManager$TaskDescription$Builder;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager$TaskDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mIconRes:I

.field private mLabel:Ljava/lang/String;

.field private mNavigationBarColor:I

.field private mPrimaryColor:I

.field private mStatusBarColor:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1707
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mLabel:Ljava/lang/String;

    .line 1709
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    .line 1711
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mPrimaryColor:I

    .line 1712
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mBackgroundColor:I

    .line 1713
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mStatusBarColor:I

    .line 1714
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mNavigationBarColor:I

    return-void
.end method


# virtual methods
.method public build()Landroid/app/ActivityManager$TaskDescription;
    .registers 15

    .line 1790
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    if-nez v0, :cond_7

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_12

    .line 1791
    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    move-object v3, v0

    :goto_12
    nop

    .line 1792
    .local v3, "icon":Landroid/graphics/drawable/Icon;
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mLabel:Ljava/lang/String;

    iget v4, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mPrimaryColor:I

    iget v5, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mBackgroundColor:I

    iget v6, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mStatusBarColor:I

    iget v7, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mNavigationBarColor:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIZZIIII)V

    return-object v0
.end method

.method public setBackgroundColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .registers 2
    .param p1, "color"    # I

    .line 1758
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mBackgroundColor:I

    .line 1759
    return-object p0
.end method

.method public setIcon(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .registers 2
    .param p1, "iconRes"    # I

    .line 1735
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    .line 1736
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Landroid/app/ActivityManager$TaskDescription$Builder;
    .registers 2
    .param p1, "label"    # Ljava/lang/String;

    .line 1723
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mLabel:Ljava/lang/String;

    .line 1724
    return-object p0
.end method

.method public setNavigationBarColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .registers 2
    .param p1, "color"    # I

    .line 1780
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mNavigationBarColor:I

    .line 1781
    return-object p0
.end method

.method public setPrimaryColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .registers 2
    .param p1, "color"    # I

    .line 1746
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mPrimaryColor:I

    .line 1747
    return-object p0
.end method

.method public setStatusBarColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .registers 2
    .param p1, "color"    # I

    .line 1769
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mStatusBarColor:I

    .line 1770
    return-object p0
.end method
