.class Landroid/widget/ImageView$ImageDrawableCallback;
.super Ljava/lang/Object;
.source "ImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageDrawableCallback"
.end annotation


# instance fields
.field private final drawable:Landroid/graphics/drawable/Drawable;

.field private final resource:I

.field final synthetic this$0:Landroid/widget/ImageView;

.field private final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V
    .registers 5
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "resource"    # I

    .line 470
    iput-object p1, p0, Landroid/widget/ImageView$ImageDrawableCallback;->this$0:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput-object p2, p0, Landroid/widget/ImageView$ImageDrawableCallback;->drawable:Landroid/graphics/drawable/Drawable;

    .line 472
    iput-object p3, p0, Landroid/widget/ImageView$ImageDrawableCallback;->uri:Landroid/net/Uri;

    .line 473
    iput p4, p0, Landroid/widget/ImageView$ImageDrawableCallback;->resource:I

    .line 474
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 478
    iget-object v0, p0, Landroid/widget/ImageView$ImageDrawableCallback;->this$0:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/ImageView$ImageDrawableCallback;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 479
    iget-object v0, p0, Landroid/widget/ImageView$ImageDrawableCallback;->this$0:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/ImageView$ImageDrawableCallback;->uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/widget/ImageView;->-$$Nest$fputmUri(Landroid/widget/ImageView;Landroid/net/Uri;)V

    .line 480
    iget-object v0, p0, Landroid/widget/ImageView$ImageDrawableCallback;->this$0:Landroid/widget/ImageView;

    iget v1, p0, Landroid/widget/ImageView$ImageDrawableCallback;->resource:I

    invoke-static {v0, v1}, Landroid/widget/ImageView;->-$$Nest$fputmResource(Landroid/widget/ImageView;I)V

    .line 481
    return-void
.end method
