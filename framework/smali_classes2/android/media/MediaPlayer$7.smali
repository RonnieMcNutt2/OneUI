.class Landroid/media/MediaPlayer$7;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/MediaPlayer;

    .line 4544
    iput-object p1, p0, Landroid/media/MediaPlayer$7;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 4547
    iget-object v0, p0, Landroid/media/MediaPlayer$7;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$mtryToDisableNativeRoutingCallback(Landroid/media/MediaPlayer;)V

    .line 4548
    iget-object v0, p0, Landroid/media/MediaPlayer$7;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->baseStop()V

    .line 4549
    return-void
.end method
