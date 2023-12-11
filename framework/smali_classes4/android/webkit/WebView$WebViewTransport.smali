.class public Landroid/webkit/WebView$WebViewTransport;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebViewTransport"
.end annotation


# instance fields
.field private mWebview:Landroid/webkit/WebView;

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/webkit/WebView;

    .line 129
    iput-object p1, p0, Landroid/webkit/WebView$WebViewTransport;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getWebView()Landroid/webkit/WebView;
    .registers 2

    monitor-enter p0

    .line 148
    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebView$WebViewTransport;->mWebview:Landroid/webkit/WebView;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 148
    .end local p0    # "this":Landroid/webkit/WebView$WebViewTransport;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWebView(Landroid/webkit/WebView;)V
    .registers 2
    .param p1, "webview"    # Landroid/webkit/WebView;

    monitor-enter p0

    .line 138
    :try_start_1
    iput-object p1, p0, Landroid/webkit/WebView$WebViewTransport;->mWebview:Landroid/webkit/WebView;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 139
    monitor-exit p0

    return-void

    .line 137
    .end local p0    # "this":Landroid/webkit/WebView$WebViewTransport;
    .end local p1    # "webview":Landroid/webkit/WebView;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
