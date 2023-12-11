.class Lcom/android/server/DrmMediaResourceHelper$2;
.super Ljava/lang/Object;
.source "DrmEventService.java"

# interfaces
.implements Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DrmMediaResourceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DrmMediaResourceHelper;


# direct methods
.method constructor <init>(Lcom/android/server/DrmMediaResourceHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/DrmMediaResourceHelper;

    .line 207
    iput-object p1, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;)V"
        }
    .end annotation

    .line 213
    .local p1, "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    if-eqz p1, :cond_a5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a5

    .line 214
    iget-object v0, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v0}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdd size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a5

    .line 216
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->getPid()I

    move-result v1

    .line 217
    .local v1, "pid":I
    if-lez v1, :cond_a2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->isSecured()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->isEncoder()Z

    move-result v2

    if-nez v2, :cond_a2

    iget-object v2, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v2, v1}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$misResourcePresent(Lcom/android/server/DrmMediaResourceHelper;I)Z

    move-result v2

    if-nez v2, :cond_a2

    .line 218
    iget-object v2, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v2}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAdd secure = true, pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v2, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v1, v3}, Landroid/drm/DrmManagerClient;->toggleCPUBoost(IZ)Z

    move-result v2

    .line 220
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v3, v1}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$maddPIDToBoostedList(Lcom/android/server/DrmMediaResourceHelper;I)Z

    .line 221
    iget-object v3, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v3}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAdd ret of toggle CPU boost to ON =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v1    # "pid":I
    .end local v2    # "ret":Z
    :cond_a2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 225
    .end local v0    # "i":I
    :cond_a5
    return-void
.end method

.method public onError(Lcom/samsung/android/media/SemMediaResourceHelper;)V
    .registers 4
    .param p1, "semMediaResourceHelper"    # Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 280
    iget-object v0, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v0}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Onerror "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method public onRemove(Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;)V"
        }
    .end annotation

    .line 232
    .local p1, "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_77

    iget-object v1, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v1}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetBoostedPIDs(Lcom/android/server/DrmMediaResourceHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_77

    .line 233
    iget-object v1, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v1}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onRemove size = 0 (All resources removed)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v1, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v1}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetBoostedPIDs(Lcom/android/server/DrmMediaResourceHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 235
    .local v1, "i":Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 236
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 237
    .local v2, "in":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 238
    .local v3, "pid":I
    sget-object v4, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, v3, v0}, Landroid/drm/DrmManagerClient;->toggleCPUBoost(IZ)Z

    move-result v4

    .line 239
    .local v4, "ret":Z
    iget-object v5, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v5, v3}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$mremovePID(Lcom/android/server/DrmMediaResourceHelper;I)V

    .line 240
    iget-object v5, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v5}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onRemove toggle CPU boost to OFF for pid =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v2    # "in":Ljava/lang/Integer;
    .end local v3    # "pid":I
    .end local v4    # "ret":Z
    goto :goto_2b

    .line 243
    :cond_64
    iget-object v2, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v2}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onRemove making Dpdrm to 0  at first point "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v2, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient;->dpDRM(I)V

    .end local v1    # "i":Ljava/util/Iterator;
    goto/16 :goto_146

    .line 245
    :cond_77
    if-eqz p1, :cond_146

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_146

    .line 246
    iget-object v1, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v1}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRemove size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    .local v1, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a7
    iget-object v3, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v3}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetBoostedPIDs(Lcom/android/server/DrmMediaResourceHelper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_10c

    .line 249
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 250
    .local v3, "it":Ljava/util/Iterator;
    iget-object v4, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v4}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetBoostedPIDs(Lcom/android/server/DrmMediaResourceHelper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 251
    .local v4, "pid":I
    const/4 v5, 0x0

    .line 252
    .local v5, "flag":Z
    :goto_c8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_dd

    .line 253
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    .line 254
    .local v6, "info":Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;
    invoke-virtual {v6}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->getPid()I

    move-result v7

    if-ne v7, v4, :cond_dc

    .line 255
    const/4 v5, 0x1

    .line 256
    goto :goto_dd

    .line 258
    .end local v6    # "info":Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;
    :cond_dc
    goto :goto_c8

    .line 259
    :cond_dd
    :goto_dd
    if-nez v5, :cond_109

    .line 260
    sget-object v6, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v6, v4, v0}, Landroid/drm/DrmManagerClient;->toggleCPUBoost(IZ)Z

    move-result v6

    .line 261
    .local v6, "ret":Z
    iget-object v7, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v7}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onRemove toggle CPU boost to OFF for pid for multiple objs =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "pid":I
    .end local v5    # "flag":Z
    .end local v6    # "ret":Z
    :cond_109
    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 266
    .end local v2    # "i":I
    :cond_10c
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_10d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_125

    .line 267
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 268
    .local v3, "pid":I
    iget-object v4, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v4, v3}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$mremovePID(Lcom/android/server/DrmMediaResourceHelper;I)V

    .line 266
    .end local v3    # "pid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_10d

    .line 270
    .end local v2    # "i":I
    :cond_125
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 271
    iget-object v2, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v2}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetBoostedPIDs(Lcom/android/server/DrmMediaResourceHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_147

    .line 272
    iget-object v2, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v2}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onRemove making Dpdrm to 0 second point "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object v2, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient;->dpDRM(I)V

    goto :goto_147

    .line 245
    .end local v1    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_146
    :goto_146
    nop

    .line 276
    :cond_147
    :goto_147
    return-void
.end method
