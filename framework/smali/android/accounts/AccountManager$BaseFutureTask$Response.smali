.class public Landroid/accounts/AccountManager$BaseFutureTask$Response;
.super Landroid/accounts/IAccountManagerResponse$Stub;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager$BaseFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Response"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/accounts/AccountManager$BaseFutureTask;


# direct methods
.method protected constructor <init>(Landroid/accounts/AccountManager$BaseFutureTask;)V
    .registers 2
    .param p1, "this$1"    # Landroid/accounts/AccountManager$BaseFutureTask;

    .line 2505
    .local p0, "this":Landroid/accounts/AccountManager$BaseFutureTask$Response;, "Landroid/accounts/AccountManager$BaseFutureTask<TT;>.Response;"
    iput-object p1, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 2525
    .local p0, "this":Landroid/accounts/AccountManager$BaseFutureTask$Response;, "Landroid/accounts/AccountManager$BaseFutureTask<TT;>.Response;"
    const/4 v0, 0x4

    if-eq p1, v0, :cond_18

    const/16 v0, 0x64

    if-eq p1, v0, :cond_18

    const/16 v0, 0x65

    if-ne p1, v0, :cond_c

    goto :goto_18

    .line 2532
    :cond_c
    iget-object v0, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    iget-object v1, v0, Landroid/accounts/AccountManager$BaseFutureTask;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v1, p1, p2}, Landroid/accounts/AccountManager;->-$$Nest$mconvertErrorToException(Landroid/accounts/AccountManager;ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    # invokes: Landroid/accounts/AccountManager$BaseFutureTask;->setException(Ljava/lang/Throwable;)V
    invoke-static {v0, v1}, Landroid/accounts/AccountManager$BaseFutureTask;->access$200(Landroid/accounts/AccountManager$BaseFutureTask;Ljava/lang/Throwable;)V

    .line 2533
    return-void

    .line 2529
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager$BaseFutureTask;->cancel(Z)Z

    .line 2530
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 2509
    .local p0, "this":Landroid/accounts/AccountManager$BaseFutureTask$Response;, "Landroid/accounts/AccountManager$BaseFutureTask<TT;>.Response;"
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager$BaseFutureTask;->bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    .line 2510
    .local v0, "result":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_9

    .line 2511
    return-void

    .line 2513
    :cond_9
    iget-object v1, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    # invokes: Landroid/accounts/AccountManager$BaseFutureTask;->set(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Landroid/accounts/AccountManager$BaseFutureTask;->access$100(Landroid/accounts/AccountManager$BaseFutureTask;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_e} :catch_11
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_e} :catch_f

    .line 2514
    return-void

    .line 2517
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :catch_f
    move-exception v0

    goto :goto_13

    .line 2515
    :catch_11
    move-exception v0

    .line 2519
    nop

    .line 2520
    :goto_13
    const/4 v0, 0x5

    const-string/jumbo v1, "no result in response"

    invoke-virtual {p0, v0, v1}, Landroid/accounts/AccountManager$BaseFutureTask$Response;->onError(ILjava/lang/String;)V

    .line 2521
    return-void
.end method
