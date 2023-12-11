.class public interface abstract Lcom/samsung/android/wifi/ai/ISemWifiAiService;
.super Ljava/lang/Object;
.source "ISemWifiAiService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/ai/ISemWifiAiService$Stub;,
        Lcom/samsung/android/wifi/ai/ISemWifiAiService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wifi.ai.ISemWifiAiService"


# virtual methods
.method public abstract serviceTypeQuery([[F[Ljava/lang/String;[II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract toggleDebugMode(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
