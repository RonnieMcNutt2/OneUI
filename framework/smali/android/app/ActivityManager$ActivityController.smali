.class Landroid/app/ActivityManager$ActivityController;
.super Landroid/app/IActivityController$Stub;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityController"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityManager;


# direct methods
.method private constructor <init>(Landroid/app/ActivityManager;)V
    .registers 2

    .line 6220
    iput-object p1, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-direct {p0}, Landroid/app/IActivityController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityManager;Landroid/app/ActivityManager$ActivityController-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$ActivityController;-><init>(Landroid/app/ActivityManager;)V

    return-void
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 6233
    iget-object v0, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$SemActivityControllerListener;

    .line 6234
    .local v1, "listener":Landroid/app/ActivityManager$SemActivityControllerListener;
    invoke-interface {v1, p1}, Landroid/app/ActivityManager$SemActivityControllerListener;->onActivityResuming(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 6235
    const/4 v0, 0x0

    return v0

    .line 6237
    .end local v1    # "listener":Landroid/app/ActivityManager$SemActivityControllerListener;
    :cond_1e
    goto :goto_a

    .line 6238
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 6223
    iget-object v0, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$SemActivityControllerListener;

    .line 6224
    .local v1, "listener":Landroid/app/ActivityManager$SemActivityControllerListener;
    invoke-interface {v1, p1, p2}, Landroid/app/ActivityManager$SemActivityControllerListener;->onActivityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 6225
    const/4 v0, 0x0

    return v0

    .line 6227
    .end local v1    # "listener":Landroid/app/ActivityManager$SemActivityControllerListener;
    :cond_1e
    goto :goto_a

    .line 6228
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .registers 19
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "timeMillis"    # J
    .param p7, "stackTrace"    # Ljava/lang/String;

    .line 6244
    move-object v0, p0

    iget-object v1, v0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v1}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$SemActivityControllerListener;

    .line 6245
    .local v2, "listener":Landroid/app/ActivityManager$SemActivityControllerListener;
    move-object v3, v2

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Landroid/app/ActivityManager$SemActivityControllerListener;->onAppCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 6247
    const/4 v1, 0x0

    return v1

    .line 6249
    .end local v2    # "listener":Landroid/app/ActivityManager$SemActivityControllerListener;
    :cond_28
    goto :goto_b

    .line 6250
    :cond_29
    const/4 v1, 0x1

    return v1
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .registers 9
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "annotation"    # Ljava/lang/String;

    .line 6255
    const/4 v0, 0x0

    .line 6256
    .local v0, "result":I
    iget-object v1, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v1}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$SemActivityControllerListener;

    .line 6257
    .local v2, "listener":Landroid/app/ActivityManager$SemActivityControllerListener;
    invoke-interface {v2, p1, p2, p3}, Landroid/app/ActivityManager$SemActivityControllerListener;->onAppEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 6258
    .local v3, "ret":I
    if-eqz v3, :cond_23

    const/4 v4, 0x1

    if-eq v3, v4, :cond_22

    if-eq v0, v4, :cond_23

    .line 6259
    :cond_22
    move v0, v3

    .line 6261
    .end local v2    # "listener":Landroid/app/ActivityManager$SemActivityControllerListener;
    .end local v3    # "ret":I
    :cond_23
    goto :goto_b

    .line 6262
    :cond_24
    return v0
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .registers 9
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "processStats"    # Ljava/lang/String;

    .line 6267
    const/4 v0, 0x0

    .line 6268
    .local v0, "result":I
    iget-object v1, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v1}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$SemActivityControllerListener;

    .line 6269
    .local v2, "listener":Landroid/app/ActivityManager$SemActivityControllerListener;
    invoke-interface {v2, p1, p2, p3}, Landroid/app/ActivityManager$SemActivityControllerListener;->onAppNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 6270
    .local v3, "ret":I
    if-eqz v3, :cond_23

    const/4 v4, 0x1

    if-eq v3, v4, :cond_22

    if-eq v0, v4, :cond_23

    .line 6271
    :cond_22
    move v0, v3

    .line 6273
    .end local v2    # "listener":Landroid/app/ActivityManager$SemActivityControllerListener;
    .end local v3    # "ret":I
    :cond_23
    goto :goto_b

    .line 6274
    :cond_24
    return v0
.end method

.method public systemNotResponding(Ljava/lang/String;)I
    .registers 7
    .param p1, "message"    # Ljava/lang/String;

    .line 6279
    const/4 v0, 0x0

    .line 6280
    .local v0, "result":I
    iget-object v1, p0, Landroid/app/ActivityManager$ActivityController;->this$0:Landroid/app/ActivityManager;

    invoke-static {v1}, Landroid/app/ActivityManager;->-$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$SemActivityControllerListener;

    .line 6281
    .local v2, "listener":Landroid/app/ActivityManager$SemActivityControllerListener;
    invoke-interface {v2, p1}, Landroid/app/ActivityManager$SemActivityControllerListener;->onSystemNotResponding(Ljava/lang/String;)I

    move-result v3

    .line 6282
    .local v3, "ret":I
    if-eqz v3, :cond_23

    const/4 v4, 0x1

    if-eq v3, v4, :cond_22

    if-eq v0, v4, :cond_23

    .line 6283
    :cond_22
    move v0, v3

    .line 6285
    .end local v2    # "listener":Landroid/app/ActivityManager$SemActivityControllerListener;
    .end local v3    # "ret":I
    :cond_23
    goto :goto_b

    .line 6286
    :cond_24
    return v0
.end method
