.class Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransaction$HierarchyOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private mActivityIntent:Landroid/content/Intent;

.field private mActivityTypes:[I

.field private mAlwaysOnTop:Z

.field private mContainer:Landroid/os/IBinder;

.field private mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

.field private mLaunchOptions:Landroid/os/Bundle;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mReparent:Landroid/os/IBinder;

.field private mReparentLeafTaskIfRelaunch:Z

.field private mReparentTopOnly:Z

.field private mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

.field private mToTop:Z

.field private final mType:I

.field private mWindowingModes:[I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "type"    # I

    .line 2214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2215
    iput p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mType:I

    .line 2216
    return-void
.end method


# virtual methods
.method build()Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 5

    .line 2290
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp;

    iget v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mType:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;-><init>(ILandroid/window/WindowContainerTransaction$HierarchyOp-IA;)V

    .line 2291
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mContainer:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmContainer(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V

    .line 2292
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparent:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmReparent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V

    .line 2293
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mWindowingModes:[I

    if-eqz v1, :cond_1c

    .line 2294
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    goto :goto_1d

    .line 2295
    :cond_1c
    move-object v1, v2

    :goto_1d
    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmWindowingModes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V

    .line 2296
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityTypes:[I

    if-eqz v1, :cond_2a

    .line 2297
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    goto :goto_2b

    .line 2298
    :cond_2a
    nop

    :goto_2b
    invoke-static {v0, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmActivityTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V

    .line 2299
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmInsetsFrameProvider(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/view/InsetsFrameProvider;)V

    .line 2300
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mToTop:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmToTop(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 2301
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparentTopOnly:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmReparentTopOnly(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 2302
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mLaunchOptions:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmLaunchOptions(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/Bundle;)V

    .line 2303
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmActivityIntent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/content/Intent;)V

    .line 2304
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmPendingIntent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/app/PendingIntent;)V

    .line 2305
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mAlwaysOnTop:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmAlwaysOnTop(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 2306
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmTaskFragmentOperation(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/window/TaskFragmentOperation;)V

    .line 2307
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmShortcutInfo(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/content/pm/ShortcutInfo;)V

    .line 2308
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparentLeafTaskIfRelaunch:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 2310
    return-object v0
.end method

.method setActivityIntent(Landroid/content/Intent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "activityIntent"    # Landroid/content/Intent;

    .line 2259
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityIntent:Landroid/content/Intent;

    .line 2260
    return-object p0
.end method

.method setActivityTypes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "activityTypes"    # [I

    .line 2249
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityTypes:[I

    .line 2250
    return-object p0
.end method

.method setAlwaysOnTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "alwaysOnTop"    # Z

    .line 2269
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mAlwaysOnTop:Z

    .line 2270
    return-object p0
.end method

.method setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "container"    # Landroid/os/IBinder;

    .line 2219
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mContainer:Landroid/os/IBinder;

    .line 2220
    return-object p0
.end method

.method setInsetsFrameProvider(Landroid/view/InsetsFrameProvider;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "providers"    # Landroid/view/InsetsFrameProvider;

    .line 2229
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    .line 2230
    return-object p0
.end method

.method setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "launchOptions"    # Landroid/os/Bundle;

    .line 2254
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mLaunchOptions:Landroid/os/Bundle;

    .line 2255
    return-object p0
.end method

.method setPendingIntent(Landroid/app/PendingIntent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "sender"    # Landroid/app/PendingIntent;

    .line 2264
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 2265
    return-object p0
.end method

.method setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "reparentContainer"    # Landroid/os/IBinder;

    .line 2224
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparent:Landroid/os/IBinder;

    .line 2225
    return-object p0
.end method

.method setReparentLeafTaskIfRelaunch(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "reparentLeafTaskIfRelaunch"    # Z

    .line 2280
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparentLeafTaskIfRelaunch:Z

    .line 2281
    return-object p0
.end method

.method setReparentTopOnly(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "reparentTopOnly"    # Z

    .line 2239
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparentTopOnly:Z

    .line 2240
    return-object p0
.end method

.method setShortcutInfo(Landroid/content/pm/ShortcutInfo;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 2285
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 2286
    return-object p0
.end method

.method setTaskFragmentOperation(Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "taskFragmentOperation"    # Landroid/window/TaskFragmentOperation;

    .line 2275
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    .line 2276
    return-object p0
.end method

.method setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "toTop"    # Z

    .line 2234
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mToTop:Z

    .line 2235
    return-object p0
.end method

.method setWindowingModes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "windowingModes"    # [I

    .line 2244
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mWindowingModes:[I

    .line 2245
    return-object p0
.end method
