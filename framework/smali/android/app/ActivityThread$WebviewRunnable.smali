.class Landroid/app/ActivityThread$WebviewRunnable;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebviewRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .registers 2

    .line 2323
    iput-object p1, p0, Landroid/app/ActivityThread$WebviewRunnable;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$WebviewRunnable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityThread$WebviewRunnable;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2326
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2328
    :try_start_5
    const-string v0, "android.webkit.WebViewFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2329
    .local v0, "webViewFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getProvider"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2330
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1f

    .line 2331
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2332
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_5 .. :try_end_1f} :catch_21

    .line 2336
    .end local v0    # "webViewFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_1f
    nop

    .line 2337
    return-void

    .line 2334
    :catch_21
    move-exception v0

    .line 2335
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v2, "webview invoke failed!!!"

    invoke-direct {v1, v2, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
