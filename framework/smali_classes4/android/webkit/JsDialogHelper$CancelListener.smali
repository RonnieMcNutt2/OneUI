.class Landroid/webkit/JsDialogHelper$CancelListener;
.super Ljava/lang/Object;
.source "JsDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/JsDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/JsDialogHelper;


# direct methods
.method private constructor <init>(Landroid/webkit/JsDialogHelper;)V
    .registers 2

    .line 131
    iput-object p1, p0, Landroid/webkit/JsDialogHelper$CancelListener;->this$0:Landroid/webkit/JsDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/JsDialogHelper;Landroid/webkit/JsDialogHelper$CancelListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/webkit/JsDialogHelper$CancelListener;-><init>(Landroid/webkit/JsDialogHelper;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 135
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$CancelListener;->this$0:Landroid/webkit/JsDialogHelper;

    invoke-static {v0}, Landroid/webkit/JsDialogHelper;->-$$Nest$fgetmResult(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 136
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 139
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$CancelListener;->this$0:Landroid/webkit/JsDialogHelper;

    invoke-static {v0}, Landroid/webkit/JsDialogHelper;->-$$Nest$fgetmResult(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 140
    return-void
.end method
