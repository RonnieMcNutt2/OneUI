.class public final synthetic Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/TunerCallbackAdapter;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/TunerCallbackAdapter;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iput-boolean p2, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iget-boolean v1, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda2;->f$1:Z

    invoke-static {v0, v1}, Landroid/hardware/radio/TunerCallbackAdapter;->$r8$lambda$y_TF9pFjTkZvawk8Whfa695EQIM(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    return-void
.end method
