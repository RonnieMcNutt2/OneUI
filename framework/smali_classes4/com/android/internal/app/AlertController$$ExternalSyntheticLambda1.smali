.class public final synthetic Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/AlertController;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/AlertController;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/AlertController;

    iput-object p2, p0, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/internal/app/AlertController;->$r8$lambda$SdKBlIFqY4Hj6MvbnhBknYHKSWw(Lcom/android/internal/app/AlertController;Landroid/view/View;)V

    return-void
.end method
