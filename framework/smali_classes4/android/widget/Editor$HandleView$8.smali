.class Landroid/widget/Editor$HandleView$8;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$HandleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor$HandleView;)V
    .registers 2
    .param p1, "this$1"    # Landroid/widget/Editor$HandleView;

    .line 7154
    iput-object p1, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 8
    .param p1, "fraction"    # F
    .param p2, "startRect"    # Landroid/graphics/Rect;
    .param p3, "targetRect"    # Landroid/graphics/Rect;

    .line 7157
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 7159
    .local v0, "diffY":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 7160
    .local v1, "rect":Landroid/graphics/Rect;
    iget v2, p3, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 7161
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 7162
    iget-object v2, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    iget v2, v2, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 7163
    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    mul-float/2addr v3, p1

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 7165
    return-object v1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 7154
    check-cast p2, Landroid/graphics/Rect;

    check-cast p3, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView$8;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method
