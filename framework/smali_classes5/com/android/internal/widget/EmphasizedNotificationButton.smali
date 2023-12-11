.class public Lcom/android/internal/widget/EmphasizedNotificationButton;
.super Landroid/widget/Button;
.source "EmphasizedNotificationButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mPriority:Z

.field private final mRipple:Landroid/graphics/drawable/RippleDrawable;


# direct methods
.method public static synthetic $r8$lambda$e8RTF-_5HE96rjsU4UvmdBPIwuE(Lcom/android/internal/widget/EmphasizedNotificationButton;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->lambda$setImageIconAsync$0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 62
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableWrapper;

    .line 64
    .local v0, "inset":Landroid/graphics/drawable/DrawableWrapper;
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iput-object v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 65
    return-void
.end method

.method private synthetic lambda$setImageIconAsync$0(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 95
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 99
    if-eqz p1, :cond_22

    .line 100
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 102
    sget-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050262

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 105
    .local v0, "iconSize":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    .end local v0    # "iconSize":I
    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 108
    return-void
.end method


# virtual methods
.method public isPriority()Z
    .registers 2

    .line 124
    iget-boolean v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mPriority:Z

    return v0
.end method

.method public setButtonBackground(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "color"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->invalidate()V

    .line 77
    return-void
.end method

.method public setImageIcon(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    .line 85
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_a
    invoke-direct {p0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    return-void
.end method

.method public setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 94
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_a
    new-instance v1, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/EmphasizedNotificationButton;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public setIsPriority(Z)V
    .registers 2
    .param p1, "priority"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 117
    iput-boolean p1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mPriority:Z

    .line 118
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "color"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->invalidate()V

    .line 71
    return-void
.end method
