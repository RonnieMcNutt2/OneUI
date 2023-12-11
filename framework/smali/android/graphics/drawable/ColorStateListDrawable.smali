.class public Landroid/graphics/drawable/ColorStateListDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ColorStateListDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;
    }
.end annotation


# instance fields
.field private mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private mMutated:Z

.field private mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mMutated:Z

    .line 41
    new-instance v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    .line 42
    invoke-direct {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->initializeColorDrawable()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 45
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mMutated:Z

    .line 46
    new-instance v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    .line 47
    invoke-direct {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->initializeColorDrawable()V

    .line 48
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorStateListDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;)V
    .registers 3
    .param p1, "state"    # Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    .line 51
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mMutated:Z

    .line 52
    iput-object p1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->initializeColorDrawable()V

    .line 54
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorStateListDrawable;->onStateChange([I)Z

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;Landroid/graphics/drawable/ColorStateListDrawable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorStateListDrawable;-><init>(Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;)V

    return-void
.end method

.method private initializeColorDrawable()V
    .registers 3

    .line 296
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 297
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ColorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 299
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_19

    .line 300
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v1, v1, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 303
    :cond_19
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    sget-object v1, Landroid/graphics/drawable/ColorStateListDrawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    if-eq v0, v1, :cond_2a

    .line 304
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v1, v1, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 306
    :cond_2a
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 85
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 87
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_14

    .line 88
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorStateListDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    .line 91
    :cond_14
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_25

    .line 92
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorStateListDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 94
    :cond_25
    return-void
.end method

.method public canApplyTheme()Z
    .registers 2

    .line 98
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public clearAlpha()V
    .registers 3

    .line 112
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    const/4 v1, -0x1

    iput v1, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    .line 113
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorStateListDrawable;->onStateChange([I)Z

    .line 114
    return-void
.end method

.method public clearMutated()V
    .registers 2

    .line 233
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mMutated:Z

    .line 235
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 59
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 60
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    .line 216
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 132
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getColorStateList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 207
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_11

    .line 208
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 210
    :cond_11
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 5

    .line 195
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget v1, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mChangingConfigurations:I

    .line 196
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getChangingConfigurations()I

    move-result v2

    iget-object v3, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->getChangingConfigurations()I

    move-result v3

    not-int v3, v3

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mChangingConfigurations:I

    .line 197
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public hasFocusStateSpecified()Z
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->hasFocusStateSpecified()Z

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 174
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 175
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :cond_11
    return-void
.end method

.method public isStateful()Z
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 221
    iget-boolean v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mMutated:Z

    if-nez v0, :cond_16

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_16

    .line 222
    new-instance v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;-><init>(Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;)V

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mMutated:Z

    .line 225
    :cond_16
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 147
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 148
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 149
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 7
    .param p1, "state"    # [I

    .line 153
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    .line 154
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 156
    .local v0, "color":I
    iget-object v2, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget v2, v2, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_30

    .line 157
    const v2, 0xffffff

    and-int/2addr v2, v0

    iget-object v3, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget v3, v3, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    const/16 v4, 0xff

    invoke-static {v3, v1, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int v0, v2, v1

    .line 160
    :cond_30
    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    if-eq v0, v1, :cond_44

    .line 161
    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 162
    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ColorDrawable;->setState([I)Z

    .line 163
    const/4 v1, 0x1

    return v1

    .line 165
    :cond_44
    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ColorDrawable;->setState([I)Z

    move-result v1

    return v1

    .line 168
    .end local v0    # "color":I
    :cond_4b
    return v1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 181
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 182
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 184
    :cond_11
    return-void
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .line 103
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iput p1, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    .line 104
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorStateListDrawable;->onStateChange([I)Z

    .line 105
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 137
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 138
    return-void
.end method

.method public setColorStateList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 244
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iput-object p1, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    .line 245
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorStateListDrawable;->onStateChange([I)Z

    .line 246
    return-void
.end method

.method public setTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 125
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iput-object p1, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 126
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 127
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorStateListDrawable;->onStateChange([I)Z

    .line 128
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 118
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iput-object p1, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 119
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 120
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorStateListDrawable;->onStateChange([I)Z

    .line 121
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 188
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 189
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 191
    :cond_11
    return-void
.end method
