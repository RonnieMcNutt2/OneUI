.class Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$2;
.super Ljava/lang/Object;
.source "BackupManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->onFailure(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;I)V
    .registers 3
    .param p1, "this$1"    # Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1423
    iput-object p1, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$2;->this$1:Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;

    iput p2, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$2;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1426
    iget-object v0, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$2;->this$1:Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;

    invoke-static {v0}, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->-$$Nest$fgetmListener(Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;)Landroid/app/backup/SelectBackupTransportCallback;

    move-result-object v0

    iget v1, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$2;->val$reason:I

    invoke-virtual {v0, v1}, Landroid/app/backup/SelectBackupTransportCallback;->onFailure(I)V

    .line 1427
    return-void
.end method
