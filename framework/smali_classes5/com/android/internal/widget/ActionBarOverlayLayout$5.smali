.class Lcom/android/internal/widget/ActionBarOverlayLayout$5;
.super Landroid/util/IntProperty;
.source "ActionBarOverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lcom/android/internal/widget/ActionBarOverlayLayout;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 150
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/internal/widget/ActionBarOverlayLayout;)Ljava/lang/Integer;
    .registers 3
    .param p1, "object"    # Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 159
    invoke-virtual {p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 150
    check-cast p1, Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$5;->get(Lcom/android/internal/widget/ActionBarOverlayLayout;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/internal/widget/ActionBarOverlayLayout;I)V
    .registers 3
    .param p1, "object"    # Lcom/android/internal/widget/ActionBarOverlayLayout;
    .param p2, "value"    # I

    .line 154
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 155
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .registers 3

    .line 150
    check-cast p1, Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/ActionBarOverlayLayout$5;->setValue(Lcom/android/internal/widget/ActionBarOverlayLayout;I)V

    return-void
.end method
