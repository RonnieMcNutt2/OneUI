.class public final synthetic Landroid/view/PixelCopy$Request$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/PixelCopy$Request$1;

.field public final synthetic f$1:Ljava/util/function/Consumer;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/PixelCopy$Request$1;Ljava/util/function/Consumer;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/PixelCopy$Request$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/PixelCopy$Request$1;

    iput-object p2, p0, Landroid/view/PixelCopy$Request$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    iput p3, p0, Landroid/view/PixelCopy$Request$1$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/view/PixelCopy$Request$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/PixelCopy$Request$1;

    iget-object v1, p0, Landroid/view/PixelCopy$Request$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    iget v2, p0, Landroid/view/PixelCopy$Request$1$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/view/PixelCopy$Request$1;->$r8$lambda$exVJZRb2TSKnUkiVyLaY-9NBcsU(Landroid/view/PixelCopy$Request$1;Ljava/util/function/Consumer;I)V

    return-void
.end method
