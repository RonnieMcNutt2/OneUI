.class Landroid/media/AudioManager$CallIRedirectionClientInfo;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallIRedirectionClientInfo"
.end annotation


# instance fields
.field public redirectMode:I

.field final synthetic this$0:Landroid/media/AudioManager;

.field public trackOrRecord:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/AudioManager;

    .line 8865
    iput-object p1, p0, Landroid/media/AudioManager$CallIRedirectionClientInfo;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
