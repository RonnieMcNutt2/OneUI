.class public interface abstract Landroid/updatabledriver/UpdatableDriverProto$DenylistsOrBuilder;
.super Ljava/lang/Object;
.source "UpdatableDriverProto.java"

# interfaces
.implements Lcom/android/framework/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/updatabledriver/UpdatableDriverProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DenylistsOrBuilder"
.end annotation


# virtual methods
.method public abstract getDenylists(I)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
.end method

.method public abstract getDenylistsCount()I
.end method

.method public abstract getDenylistsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
            ">;"
        }
    .end annotation
.end method
