.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;
.super Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
.source "PrintManager.java"

# interfaces
.implements Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyLayoutResultCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/print/ILayoutResultCallback;

.field private final mSequence:I

.field final synthetic this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/ILayoutResultCallback;I)V
    .registers 4
    .param p2, "callback"    # Landroid/print/ILayoutResultCallback;
    .param p3, "sequence"    # I

    .line 1148
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;-><init>()V

    .line 1149
    iput-object p2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;

    .line 1150
    iput p3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    .line 1151
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 4

    .line 1233
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1234
    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;

    .line 1235
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v2, v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fputmPendingCallback(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;)V

    .line 1236
    monitor-exit v0

    .line 1237
    return-void

    .line 1236
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public onLayoutCancelled()V
    .registers 5

    .line 1210
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1211
    :try_start_7
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;

    .line 1212
    .local v1, "callback":Landroid/print/ILayoutResultCallback;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_2f

    .line 1215
    if-nez v1, :cond_14

    .line 1216
    const-string v0, "PrintManager"

    const-string v2, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    return-void

    .line 1223
    :cond_14
    :try_start_14
    iget v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    invoke-interface {v1, v0}, Landroid/print/ILayoutResultCallback;->onLayoutCanceled(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_20
    .catchall {:try_start_14 .. :try_end_19} :catchall_1e

    .line 1227
    nop

    :goto_1a
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    .line 1228
    goto :goto_2a

    .line 1227
    :catchall_1e
    move-exception v0

    goto :goto_2b

    .line 1224
    :catch_20
    move-exception v0

    .line 1225
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_21
    const-string v2, "PrintManager"

    const-string v3, "Error calling onLayoutFailed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_1e

    .line 1227
    nop

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_1a

    .line 1229
    :goto_2a
    return-void

    .line 1227
    :goto_2b
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    .line 1228
    throw v0

    .line 1212
    .end local v1    # "callback":Landroid/print/ILayoutResultCallback;
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public onLayoutFailed(Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/CharSequence;

    .line 1186
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1187
    :try_start_7
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;

    .line 1188
    .local v1, "callback":Landroid/print/ILayoutResultCallback;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_2f

    .line 1191
    if-nez v1, :cond_14

    .line 1192
    const-string v0, "PrintManager"

    const-string v2, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    return-void

    .line 1199
    :cond_14
    :try_start_14
    iget v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    invoke-interface {v1, p1, v0}, Landroid/print/ILayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_20
    .catchall {:try_start_14 .. :try_end_19} :catchall_1e

    .line 1203
    nop

    :goto_1a
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    .line 1204
    goto :goto_2a

    .line 1203
    :catchall_1e
    move-exception v0

    goto :goto_2b

    .line 1200
    :catch_20
    move-exception v0

    .line 1201
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_21
    const-string v2, "PrintManager"

    const-string v3, "Error calling onLayoutFailed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_1e

    .line 1203
    nop

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_1a

    .line 1205
    :goto_2a
    return-void

    .line 1203
    :goto_2b
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    .line 1204
    throw v0

    .line 1188
    .end local v1    # "callback":Landroid/print/ILayoutResultCallback;
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V
    .registers 7
    .param p1, "info"    # Landroid/print/PrintDocumentInfo;
    .param p2, "changed"    # Z

    .line 1156
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1157
    :try_start_7
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;

    .line 1158
    .local v1, "callback":Landroid/print/ILayoutResultCallback;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_37

    .line 1161
    if-nez v1, :cond_14

    .line 1162
    const-string v0, "PrintManager"

    const-string v2, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    return-void

    .line 1169
    :cond_14
    if-eqz p1, :cond_2b

    .line 1174
    :try_start_16
    iget v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    invoke-interface {v1, p1, p2, v0}, Landroid/print/ILayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;ZI)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1e
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    .line 1177
    goto :goto_26

    .line 1179
    :catchall_1c
    move-exception v0

    goto :goto_33

    .line 1175
    :catch_1e
    move-exception v0

    .line 1176
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_1f
    const-string v2, "PrintManager"

    const-string v3, "Error calling onLayoutFinished"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1c

    .line 1179
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_26
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    .line 1180
    nop

    .line 1181
    return-void

    .line 1170
    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "document info cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v1    # "callback":Landroid/print/ILayoutResultCallback;
    .end local p0    # "this":Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;
    .end local p1    # "info":Landroid/print/PrintDocumentInfo;
    .end local p2    # "changed":Z
    throw v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_1c

    .line 1179
    .restart local v1    # "callback":Landroid/print/ILayoutResultCallback;
    .restart local p0    # "this":Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;
    .restart local p1    # "info":Landroid/print/PrintDocumentInfo;
    .restart local p2    # "changed":Z
    :goto_33
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    .line 1180
    throw v0

    .line 1158
    .end local v1    # "callback":Landroid/print/ILayoutResultCallback;
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1
.end method
