.class public Lcom/android/internal/widget/NotificationExpandButton;
.super Landroid/widget/FrameLayout;
.source "NotificationExpandButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mDefaultPillColor:I

.field private mDefaultTextColor:I

.field private mExpanded:Z

.field private mHighlightPillColor:I

.field private mHighlightTextColor:I

.field private mIconView:Landroid/widget/ImageView;

.field private mNumber:I

.field private mNumberView:Landroid/widget/TextView;

.field private mPillView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/NotificationExpandButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/NotificationExpandButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationExpandButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    return-void
.end method

.method private shouldShowNumber()Z
    .registers 3

    .line 181
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mExpanded:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private updateColors()V
    .registers 4

    .line 169
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultPillColor:I

    if-eqz v0, :cond_d

    .line 170
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mPillView:Landroid/view/View;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 173
    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultTextColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 174
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultTextColor:I

    if-eqz v0, :cond_1f

    .line 175
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    :cond_1f
    return-void
.end method

.method private updateExpandedState()V
    .registers 5

    .line 128
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mExpanded:Z

    if-eqz v0, :cond_b

    .line 129
    const v0, 0x10803a9

    .line 130
    .local v0, "drawableId":I
    const v1, 0x104049f

    .local v1, "contentDescriptionId":I
    goto :goto_11

    .line 132
    .end local v0    # "drawableId":I
    .end local v1    # "contentDescriptionId":I
    :cond_b
    const v0, 0x10803e8

    .line 133
    .restart local v0    # "drawableId":I
    const v1, 0x104049e

    .line 135
    .restart local v1    # "contentDescriptionId":I
    :goto_11
    iget-object v2, p0, Lcom/android/internal/widget/NotificationExpandButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationExpandButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v2, p0, Lcom/android/internal/widget/NotificationExpandButton;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateNumber()V

    .line 140
    return-void
.end method

.method private updateNumber()V
    .registers 4

    .line 143
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->shouldShowNumber()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 144
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_22

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x1040e5f

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    .line 146
    :cond_22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_36
    nop

    .line 147
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    .end local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_4a

    .line 150
    :cond_43
    iget-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :goto_4a
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 155
    return-void
.end method


# virtual methods
.method public getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .registers 6
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "clipToParent"    # Z

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 89
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const v2, 0x10202dc

    if-ne v1, v2, :cond_15

    .line 90
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    goto :goto_18

    .line 92
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 94
    :goto_18
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 76
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 77
    const v0, 0x10202db

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationExpandButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mPillView:Landroid/view/View;

    .line 78
    const v0, 0x10202da

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationExpandButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    .line 79
    const v0, 0x10202d9

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationExpandButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mIconView:Landroid/widget/ImageView;

    .line 80
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 112
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 113
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method public pointInView(FFF)Z
    .registers 7
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 103
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const v2, 0x10202dc

    if-ne v1, v2, :cond_13

    .line 105
    const/4 v1, 0x1

    return v1

    .line 107
    :cond_13
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->pointInView(FFF)Z

    move-result v1

    return v1
.end method

.method public setDefaultPillColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 198
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultPillColor:I

    .line 199
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 200
    return-void
.end method

.method public setDefaultTextColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 189
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultTextColor:I

    .line 190
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 191
    return-void
.end method

.method public setExpanded(Z)V
    .registers 2
    .param p1, "expanded"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 121
    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mExpanded:Z

    .line 122
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateExpandedState()V

    .line 123
    return-void
.end method

.method public setHighlightPillColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 216
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightPillColor:I

    .line 217
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 218
    return-void
.end method

.method public setHighlightTextColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 207
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightTextColor:I

    .line 208
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 209
    return-void
.end method

.method public setNumber(I)V
    .registers 3
    .param p1, "number"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 226
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    if-eq v0, p1, :cond_9

    .line 227
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    .line 228
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateNumber()V

    .line 230
    :cond_9
    return-void
.end method

.method public updateContentDescription()V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 236
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mExpanded:Z

    if-eqz v0, :cond_8

    .line 237
    const v0, 0x104049f

    .local v0, "contentDescriptionId":I
    goto :goto_b

    .line 239
    .end local v0    # "contentDescriptionId":I
    :cond_8
    const v0, 0x104049e

    .line 241
    .restart local v0    # "contentDescriptionId":I
    :goto_b
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationExpandButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 242
    return-void
.end method
