.class public final synthetic Lcom/samsung/android/widget/SemHoverPopupWindow$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/widget/SemHoverPopupWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    return-void
.end method
