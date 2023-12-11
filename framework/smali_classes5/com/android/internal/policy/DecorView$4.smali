.class Lcom/android/internal/policy/DecorView$4;
.super Landroid/util/FloatProperty;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/internal/policy/DecorView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/DecorView;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;
    .param p2, "name"    # Ljava/lang/String;

    .line 470
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$4;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/internal/policy/DecorView;)Ljava/lang/Float;
    .registers 3
    .param p1, "object"    # Lcom/android/internal/policy/DecorView;

    .line 478
    invoke-static {p1}, Lcom/android/internal/policy/DecorView;->-$$Nest$mgetContentAlpha(Lcom/android/internal/policy/DecorView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 470
    check-cast p1, Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView$4;->get(Lcom/android/internal/policy/DecorView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/internal/policy/DecorView;F)V
    .registers 3
    .param p1, "object"    # Lcom/android/internal/policy/DecorView;
    .param p2, "value"    # F

    .line 473
    invoke-static {p1, p2}, Lcom/android/internal/policy/DecorView;->-$$Nest$msetContentAlpha(Lcom/android/internal/policy/DecorView;F)V

    .line 474
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 470
    check-cast p1, Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/DecorView$4;->setValue(Lcom/android/internal/policy/DecorView;F)V

    return-void
.end method
