.class Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
.super Ljava/lang/Object;
.source "AdaptiveIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AdaptiveIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildDrawable"
.end annotation


# instance fields
.field public mDensity:I

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mThemeAttrs:[I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "density"    # I

    .line 947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 945
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    .line 948
    iput p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    .line 949
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/content/res/Resources;)V
    .registers 8
    .param p1, "orig"    # Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .param p2, "owner"    # Landroid/graphics/drawable/AdaptiveIconDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 945
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    .line 954
    iget-object v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 956
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_30

    .line 957
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 958
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v1, :cond_13

    .line 959
    move-object v2, v0

    .local v2, "clone":Landroid/graphics/drawable/Drawable;
    goto :goto_1e

    .line 960
    .end local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_13
    if-eqz p3, :cond_1a

    .line 961
    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "clone":Landroid/graphics/drawable/Drawable;
    goto :goto_1e

    .line 963
    .end local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_1a
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 965
    .restart local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :goto_1e
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 966
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 967
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 968
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto :goto_31

    .line 969
    .end local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_30
    const/4 v2, 0x0

    .line 972
    .restart local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :goto_31
    iput-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 973
    iget-object v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 975
    iget v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    invoke-static {p3, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    .line 976
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    .line 979
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 980
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 979
    :goto_12
    return v0
.end method

.method public final setDensity(I)V
    .registers 3
    .param p1, "targetDensity"    # I

    .line 984
    iget v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    if-eq v0, p1, :cond_6

    .line 985
    iput p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    .line 987
    :cond_6
    return-void
.end method
