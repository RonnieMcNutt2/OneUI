.class public Landroid/webkit/WebViewFactory$StartupTimestamps;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartupTimestamps"
.end annotation


# instance fields
.field mAddAssetsEnd:J

.field mAddAssetsStart:J

.field mCreateContextEnd:J

.field mCreateContextStart:J

.field mGetClassLoaderEnd:J

.field mGetClassLoaderStart:J

.field mNativeLoadEnd:J

.field mNativeLoadStart:J

.field mProviderClassForNameEnd:J

.field mProviderClassForNameStart:J

.field mWebViewLoadStart:J


# direct methods
.method constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddAssetsEnd()J
    .registers 3

    .line 147
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mAddAssetsEnd:J

    return-wide v0
.end method

.method public getAddAssetsStart()J
    .registers 3

    .line 141
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mAddAssetsStart:J

    return-wide v0
.end method

.method public getCreateContextEnd()J
    .registers 3

    .line 135
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mCreateContextEnd:J

    return-wide v0
.end method

.method public getCreateContextStart()J
    .registers 3

    .line 129
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mCreateContextStart:J

    return-wide v0
.end method

.method public getGetClassLoaderEnd()J
    .registers 3

    .line 159
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mGetClassLoaderEnd:J

    return-wide v0
.end method

.method public getGetClassLoaderStart()J
    .registers 3

    .line 153
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mGetClassLoaderStart:J

    return-wide v0
.end method

.method public getNativeLoadEnd()J
    .registers 3

    .line 171
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mNativeLoadEnd:J

    return-wide v0
.end method

.method public getNativeLoadStart()J
    .registers 3

    .line 165
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mNativeLoadStart:J

    return-wide v0
.end method

.method public getProviderClassForNameEnd()J
    .registers 3

    .line 183
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mProviderClassForNameEnd:J

    return-wide v0
.end method

.method public getProviderClassForNameStart()J
    .registers 3

    .line 177
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mProviderClassForNameStart:J

    return-wide v0
.end method

.method public getWebViewLoadStart()J
    .registers 3

    .line 123
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mWebViewLoadStart:J

    return-wide v0
.end method
