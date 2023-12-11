.class abstract Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;
.super Landroid/telephony/mbms/DownloadProgressListener;
.source "MbmsDownloadServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "VendorDownloadProgressListener"
.end annotation


# instance fields
.field private final mListener:Landroid/telephony/mbms/IDownloadProgressListener;


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/IDownloadProgressListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/telephony/mbms/IDownloadProgressListener;

    .line 76
    invoke-direct {p0}, Landroid/telephony/mbms/DownloadProgressListener;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;->mListener:Landroid/telephony/mbms/IDownloadProgressListener;

    .line 78
    return-void
.end method


# virtual methods
.method public onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .registers 14
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "fileInfo"    # Landroid/telephony/mbms/FileInfo;
    .param p3, "currentDownloadSize"    # I
    .param p4, "fullDownloadSize"    # I
    .param p5, "currentDecodedSize"    # I
    .param p6, "fullDecodedSize"    # I

    .line 85
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;->mListener:Landroid/telephony/mbms/IDownloadProgressListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/telephony/mbms/IDownloadProgressListener;->onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 89
    goto :goto_10

    .line 87
    :catch_c
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;->onRemoteException(Landroid/os/RemoteException;)V

    .line 90
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method protected abstract onRemoteException(Landroid/os/RemoteException;)V
.end method
