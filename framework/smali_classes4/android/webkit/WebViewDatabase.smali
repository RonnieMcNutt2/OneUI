.class public abstract Landroid/webkit/WebViewDatabase;
.super Ljava/lang/Object;
.source "WebViewDatabase.java"


# static fields
.field protected static final LOGTAG:Ljava/lang/String; = "webviewdatabase"


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 47
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkit/WebViewFactoryProvider;->getWebViewDatabase(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract clearFormData()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract clearHttpAuthUsernamePassword()V
.end method

.method public abstract clearUsernamePassword()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract hasFormData()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasHttpAuthUsernamePassword()Z
.end method

.method public abstract hasUsernamePassword()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
