.class Lcom/samsung/android/media/SemMediaPlayer$StreamEventExecutor;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamEventExecutor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/media/SemMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/samsung/android/media/SemMediaPlayer;)V
    .registers 2

    .line 4011
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$StreamEventExecutor;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 4014
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4015
    return-void
.end method
