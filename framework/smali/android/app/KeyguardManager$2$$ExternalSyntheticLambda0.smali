.class public final synthetic Landroid/app/KeyguardManager$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/KeyguardManager$KeyguardDismissCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/KeyguardManager$2$$ExternalSyntheticLambda0;->f$0:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/app/KeyguardManager$2$$ExternalSyntheticLambda0;->f$0:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissCancelled()V

    return-void
.end method
