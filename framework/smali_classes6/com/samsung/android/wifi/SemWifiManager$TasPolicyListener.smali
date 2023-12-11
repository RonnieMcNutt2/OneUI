.class public abstract Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;
.super Ljava/lang/Object;
.source "SemWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TasPolicyListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;
    }
.end annotation


# instance fields
.field private final mProxy:Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5061
    new-instance v0, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;->mProxy:Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;

    .line 5062
    return-void
.end method


# virtual methods
.method getProxy()Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;
    .registers 2

    .line 5065
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;->mProxy:Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;

    return-object v0
.end method

.method public abstract onTasPolicyChanged(II)V
.end method
