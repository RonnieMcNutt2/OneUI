.class public final synthetic Landroid/app/StatusBarManager$RequestResultCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/StatusBarManager$RequestResultCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/StatusBarManager$RequestResultCallback;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/StatusBarManager$RequestResultCallback$$ExternalSyntheticLambda0;->f$0:Landroid/app/StatusBarManager$RequestResultCallback;

    iput p2, p0, Landroid/app/StatusBarManager$RequestResultCallback$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/StatusBarManager$RequestResultCallback$$ExternalSyntheticLambda0;->f$0:Landroid/app/StatusBarManager$RequestResultCallback;

    iget v1, p0, Landroid/app/StatusBarManager$RequestResultCallback$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroid/app/StatusBarManager$RequestResultCallback;->$r8$lambda$C8mQ-JcFLtLGEYo-MhDpVb5wCwM(Landroid/app/StatusBarManager$RequestResultCallback;I)V

    return-void
.end method
