.class public interface abstract Landroid/security/legacykeystore/ILegacyKeystore;
.super Ljava/lang/Object;
.source "ILegacyKeystore.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/legacykeystore/ILegacyKeystore$Stub;,
        Landroid/security/legacykeystore/ILegacyKeystore$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final ERROR_ENTRY_NOT_FOUND:I = 0x7

.field public static final ERROR_PERMISSION_DENIED:I = 0x6

.field public static final ERROR_SYSTEM_ERROR:I = 0x4

.field public static final UID_SELF:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 338
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$security$legacykeystore$ILegacyKeystore"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/security/legacykeystore/ILegacyKeystore;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract get(Ljava/lang/String;I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract list(Ljava/lang/String;I)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/String;I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
