.class public final Landroid/window/TaskFragmentAnimationParams$Builder;
.super Ljava/lang/Object;
.source "TaskFragmentAnimationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskFragmentAnimationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAnimationBackgroundColor:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mAnimationBackgroundColor:I

    return-void
.end method


# virtual methods
.method public build()Landroid/window/TaskFragmentAnimationParams;
    .registers 4

    .line 134
    new-instance v0, Landroid/window/TaskFragmentAnimationParams;

    iget v1, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mAnimationBackgroundColor:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/window/TaskFragmentAnimationParams;-><init>(ILandroid/window/TaskFragmentAnimationParams-IA;)V

    return-object v0
.end method

.method public setAnimationBackgroundColor(I)Landroid/window/TaskFragmentAnimationParams$Builder;
    .registers 2
    .param p1, "color"    # I

    .line 127
    iput p1, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mAnimationBackgroundColor:I

    .line 128
    return-object p0
.end method
