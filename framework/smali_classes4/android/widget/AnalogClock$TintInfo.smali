.class final Landroid/widget/AnalogClock$TintInfo;
.super Ljava/lang/Object;
.source "AnalogClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TintInfo"
.end annotation


# instance fields
.field mHasTintBlendMode:Z

.field mHasTintList:Z

.field mTintBlendMode:Landroid/graphics/BlendMode;

.field mTintList:Landroid/content/res/ColorStateList;

.field final synthetic this$0:Landroid/widget/AnalogClock;


# direct methods
.method private constructor <init>(Landroid/widget/AnalogClock;)V
    .registers 2

    .line 896
    iput-object p1, p0, Landroid/widget/AnalogClock$TintInfo;->this$0:Landroid/widget/AnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AnalogClock;Landroid/widget/AnalogClock$TintInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/AnalogClock$TintInfo;-><init>(Landroid/widget/AnalogClock;)V

    return-void
.end method


# virtual methods
.method apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 907
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 909
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 911
    .local v0, "newDrawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-eqz v1, :cond_11

    .line 912
    iget-object v1, p0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 915
    :cond_11
    iget-boolean v1, p0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v1, :cond_1a

    .line 916
    iget-object v1, p0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 920
    :cond_1a
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 921
    iget-object v1, p0, Landroid/widget/AnalogClock$TintInfo;->this$0:Landroid/widget/AnalogClock;

    invoke-virtual {v1}, Landroid/widget/AnalogClock;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 924
    :cond_29
    return-object v0
.end method
