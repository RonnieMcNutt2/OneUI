.class public final Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
.super Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
.source "UpdatableDriverProto.java"

# interfaces
.implements Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/updatabledriver/UpdatableDriverProto$Denylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;",
        ">;",
        "Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 280
    # getter for: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    invoke-static {}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$000()Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    .line 281
    return-void
.end method

.method synthetic constructor <init>(Landroid/updatabledriver/UpdatableDriverProto$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/updatabledriver/UpdatableDriverProto$1;

    .line 273
    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPackageNames(Ljava/lang/Iterable;)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;"
        }
    .end annotation

    .line 387
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 388
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->addAllPackageNames(Ljava/lang/Iterable;)V
    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$500(Landroid/updatabledriver/UpdatableDriverProto$Denylist;Ljava/lang/Iterable;)V

    .line 389
    return-object p0
.end method

.method public addPackageNames(Ljava/lang/String;)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 376
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 377
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->addPackageNames(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$400(Landroid/updatabledriver/UpdatableDriverProto$Denylist;Ljava/lang/String;)V

    .line 378
    return-object p0
.end method

.method public addPackageNamesBytes(Lcom/android/framework/protobuf/ByteString;)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 3
    .param p1, "value"    # Lcom/android/framework/protobuf/ByteString;

    .line 407
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 408
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->addPackageNamesBytes(Lcom/android/framework/protobuf/ByteString;)V
    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$700(Landroid/updatabledriver/UpdatableDriverProto$Denylist;Lcom/android/framework/protobuf/ByteString;)V

    .line 409
    return-object p0
.end method

.method public clearPackageNames()Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 2

    .line 396
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 397
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->clearPackageNames()V
    invoke-static {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$600(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    .line 398
    return-object p0
.end method

.method public clearVersionCode()Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 2

    .line 315
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 316
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->clearVersionCode()V
    invoke-static {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$200(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    .line 317
    return-object p0
.end method

.method public getPackageNames(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 345
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getPackageNames(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageNamesBytes(I)Lcom/android/framework/protobuf/ByteString;
    .registers 3
    .param p1, "index"    # I

    .line 355
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getPackageNamesBytes(I)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPackageNamesCount()I
    .registers 2

    .line 336
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getPackageNamesCount()I

    move-result v0

    return v0
.end method

.method public getPackageNamesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 328
    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getPackageNamesList()Ljava/util/List;

    move-result-object v0

    .line 327
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()J
    .registers 3

    .line 298
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasVersionCode()Z
    .registers 2

    .line 290
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->hasVersionCode()Z

    move-result v0

    return v0
.end method

.method public setPackageNames(ILjava/lang/String;)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 365
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 366
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->setPackageNames(ILjava/lang/String;)V
    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$300(Landroid/updatabledriver/UpdatableDriverProto$Denylist;ILjava/lang/String;)V

    .line 367
    return-object p0
.end method

.method public setVersionCode(J)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .registers 4
    .param p1, "value"    # J

    .line 306
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    .line 307
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylist;->setVersionCode(J)V
    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$100(Landroid/updatabledriver/UpdatableDriverProto$Denylist;J)V

    .line 308
    return-object p0
.end method
