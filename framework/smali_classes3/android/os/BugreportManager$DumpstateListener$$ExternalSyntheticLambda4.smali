.class public final synthetic Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/BugreportManager$DumpstateListener;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/os/BugreportManager$DumpstateListener;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda4;->f$0:Landroid/os/BugreportManager$DumpstateListener;

    iput-object p2, p0, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda4;->f$0:Landroid/os/BugreportManager$DumpstateListener;

    iget-object v1, p0, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/BugreportManager$DumpstateListener;->$r8$lambda$OS6ybbQBRGLjHlwH7lYgRqFxvHw(Landroid/os/BugreportManager$DumpstateListener;Ljava/lang/String;)V

    return-void
.end method
