.class public final synthetic Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/resumeonreboot/ResumeOnRebootService$1;

.field public final synthetic f$1:[B

.field public final synthetic f$2:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/service/resumeonreboot/ResumeOnRebootService$1;[BLandroid/os/RemoteCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda0;->f$0:Landroid/service/resumeonreboot/ResumeOnRebootService$1;

    iput-object p2, p0, Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda0;->f$1:[B

    iput-object p3, p0, Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda0;->f$2:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda0;->f$0:Landroid/service/resumeonreboot/ResumeOnRebootService$1;

    iget-object v1, p0, Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda0;->f$1:[B

    iget-object v2, p0, Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda0;->f$2:Landroid/os/RemoteCallback;

    invoke-static {v0, v1, v2}, Landroid/service/resumeonreboot/ResumeOnRebootService$1;->$r8$lambda$fN-A2KL002SodmyV2yOxmypcD8s(Landroid/service/resumeonreboot/ResumeOnRebootService$1;[BLandroid/os/RemoteCallback;)V

    return-void
.end method
