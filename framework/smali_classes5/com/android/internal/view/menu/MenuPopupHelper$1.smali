.class Lcom/android/internal/view/menu/MenuPopupHelper$1;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/MenuPopupHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .line 352
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$1;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    .line 355
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$1;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 356
    return-void
.end method
