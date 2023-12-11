.class public final synthetic Landroid/app/ambientcontext/AmbientContextManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/ambientcontext/AmbientContextCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/ambientcontext/AmbientContextCallback;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ambientcontext/AmbientContextManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/ambientcontext/AmbientContextCallback;

    iput p2, p0, Landroid/app/ambientcontext/AmbientContextManager$1$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/ambientcontext/AmbientContextManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/ambientcontext/AmbientContextCallback;

    iget v1, p0, Landroid/app/ambientcontext/AmbientContextManager$1$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroid/app/ambientcontext/AmbientContextManager$1;->lambda$onRegistrationComplete$1(Landroid/app/ambientcontext/AmbientContextCallback;I)V

    return-void
.end method
