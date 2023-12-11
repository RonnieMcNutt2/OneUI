.class public abstract Lcom/samsung/android/allshare/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.java"


# static fields
.field public static final SERVICE_FILE:Ljava/lang/String; = "com.samsung.android.allshare.file"

.field public static final SERVICE_MEDIA:Ljava/lang/String; = "com.samsung.android.allshare.media"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public abstract getDeviceFinder()Lcom/samsung/android/allshare/DeviceFinder;
.end method

.method public abstract getDownloader()Lcom/samsung/android/allshare/extension/SECDownloader;
.end method

.method public abstract getServiceState()Lcom/samsung/android/allshare/ServiceConnector$ServiceState;
.end method

.method public abstract getServiceVersion()Ljava/lang/String;
.end method
