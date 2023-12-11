.class public final Landroid/widget/inline/InlinePresentationSpec$Builder;
.super Landroid/widget/inline/InlinePresentationSpec$BaseBuilder;
.source "InlinePresentationSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/inline/InlinePresentationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderFieldsSet:J

.field private mMaxSize:Landroid/util/Size;

.field private mMinSize:Landroid/util/Size;

.field private mStyle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/util/Size;Landroid/util/Size;)V
    .registers 5
    .param p1, "minSize"    # Landroid/util/Size;
    .param p2, "maxSize"    # Landroid/util/Size;

    .line 267
    invoke-direct {p0}, Landroid/widget/inline/InlinePresentationSpec$BaseBuilder;-><init>()V

    .line 255
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/inline/InlinePresentationSpec$Builder;->mBuilderFieldsSet:J

    .line 268
    iput-object p1, p0, Landroid/widget/inline/InlinePresentationSpec$Builder;->mMinSize:Landroid/util/Size;

    .line 269
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 271
    iput-object p2, p0, Landroid/widget/inline/InlinePresentationSpec$Builder;->mMaxSize:Landroid/util/Size;

    .line 272
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method private checkNotUsed()V
    .registers 5

    .line 312
    iget-wide v0, p0, Landroid/widget/inline/InlinePresentationSpec$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 316
    return-void

    .line 313
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/widget/inline/InlinePresentationSpec;
    .registers 5

    .line 298
    invoke-direct {p0}, Landroid/widget/inline/InlinePresentationSpec$Builder;->checkNotUsed()V

    .line 299
    iget-wide v0, p0, Landroid/widget/inline/InlinePresentationSpec$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/inline/InlinePresentationSpec$Builder;->mBuilderFieldsSet:J

    .line 301
    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 302
    invoke-static {}, Landroid/widget/inline/InlinePresentationSpec;->-$$Nest$smdefaultStyle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/inline/InlinePresentationSpec$Builder;->mStyle:Landroid/os/Bundle;

    .line 304
    :cond_19
    new-instance v0, Landroid/widget/inline/InlinePresentationSpec;

    iget-object v1, p0, Landroid/widget/inline/InlinePresentationSpec$Builder;->mMinSize:Landroid/util/Size;

    iget-object v2, p0, Landroid/widget/inline/InlinePresentationSpec$Builder;->mMaxSize:Landroid/util/Size;

    iget-object v3, p0, Landroid/widget/inline/InlinePresentationSpec$Builder;->mStyle:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/inline/InlinePresentationSpec;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/os/Bundle;)V

    .line 308
    .local v0, "o":Landroid/widget/inline/InlinePresentationSpec;
    return-object v0
.end method

.method public setStyle(Landroid/os/Bundle;)Landroid/widget/inline/InlinePresentationSpec$Builder;
    .registers 6
    .param p1, "value"    # Landroid/os/Bundle;

    .line 290
    invoke-direct {p0}, Landroid/widget/inline/InlinePresentationSpec$Builder;->checkNotUsed()V

    .line 291
    iget-wide v0, p0, Landroid/widget/inline/InlinePresentationSpec$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/inline/InlinePresentationSpec$Builder;->mBuilderFieldsSet:J

    .line 292
    iput-object p1, p0, Landroid/widget/inline/InlinePresentationSpec$Builder;->mStyle:Landroid/os/Bundle;

    .line 293
    return-object p0
.end method
