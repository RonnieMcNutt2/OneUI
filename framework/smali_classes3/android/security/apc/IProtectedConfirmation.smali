.class public interface abstract Landroid/security/apc/IProtectedConfirmation;
.super Ljava/lang/Object;
.source "IProtectedConfirmation.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/apc/IProtectedConfirmation$Stub;,
        Landroid/security/apc/IProtectedConfirmation$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final FLAG_UI_OPTION_INVERTED:I = 0x1

.field public static final FLAG_UI_OPTION_MAGNIFIED:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 236
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$security$apc$IProtectedConfirmation"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/security/apc/IProtectedConfirmation;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract cancelPrompt(Landroid/security/apc/IConfirmationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isSupported()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract presentPrompt(Landroid/security/apc/IConfirmationCallback;Ljava/lang/String;[BLjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
