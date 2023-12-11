.class public final synthetic Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/window/TaskOrganizer$1;

.field public final synthetic f$1:Landroid/window/StartingWindowRemovalInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowRemovalInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda10;->f$0:Landroid/window/TaskOrganizer$1;

    iput-object p2, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda10;->f$1:Landroid/window/StartingWindowRemovalInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda10;->f$0:Landroid/window/TaskOrganizer$1;

    iget-object v1, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda10;->f$1:Landroid/window/StartingWindowRemovalInfo;

    invoke-static {v0, v1}, Landroid/window/TaskOrganizer$1;->$r8$lambda$2JHKaaOagq73z_eNGwNUJayE2KI(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowRemovalInfo;)V

    return-void
.end method
