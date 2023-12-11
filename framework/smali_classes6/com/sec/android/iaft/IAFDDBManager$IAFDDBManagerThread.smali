.class Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;
.super Ljava/lang/Thread;
.source "IAFDDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IAFDDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IAFDDBManagerThread"
.end annotation


# instance fields
.field mPriority:I

.field final synthetic this$0:Lcom/sec/android/iaft/IAFDDBManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/iaft/IAFDDBManager;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    .line 162
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 163
    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->mPriority:I

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/iaft/IAFDDBManager;Ljava/lang/String;I)V
    .registers 4
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .line 172
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    .line 173
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 174
    iput p3, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->mPriority:I

    .line 175
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 179
    iget v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 180
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 181
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    new-instance v1, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-direct {v1, v2}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;-><init>(Lcom/sec/android/iaft/IAFDDBManager;)V

    invoke-static {v0, v1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fputmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;)V

    .line 182
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 183
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 184
    return-void
.end method
