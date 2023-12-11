.class Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteCollectionItemListAdapterAction"
.end annotation


# instance fields
.field private final mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteCollectionItems;)V
    .registers 5
    .param p2, "id"    # I
    .param p3, "items"    # Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 1209
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 1210
    iput p2, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->viewId:I

    .line 1211
    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 1212
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 1213
    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 4
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 1215
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 1216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->viewId:I

    .line 1217
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;)V

    iput-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 1218
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 11
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 1234
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1235
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_9

    return-void

    .line 1238
    :cond_9
    instance-of v1, p2, Landroid/appwidget/AppWidgetHostView;

    const-string v2, ")"

    const-string v3, "RemoteViews"

    if-nez v1, :cond_37

    iget-object v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmAllowOtherRootParent(Landroid/widget/RemoteViews;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 1239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRemoteAdapter can only be used for AppWidgets (root id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->viewId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    return-void

    .line 1244
    :cond_37
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-nez v1, :cond_58

    .line 1245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot call setRemoteAdapter on a view which is not an AdapterView (id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->viewId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    return-void

    .line 1250
    :cond_58
    move-object v1, v0

    check-cast v1, Landroid/widget/AdapterView;

    .line 1251
    .local v1, "adapterView":Landroid/widget/AdapterView;
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1256
    .local v2, "adapter":Landroid/widget/Adapter;
    instance-of v3, v2, Landroid/widget/RemoteCollectionItemsAdapter;

    if-eqz v3, :cond_84

    .line 1257
    invoke-interface {v2}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v3

    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v4}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getViewTypeCount()I

    move-result v4

    if-lt v3, v4, :cond_84

    .line 1259
    :try_start_6f
    move-object v3, v2

    check-cast v3, Landroid/widget/RemoteCollectionItemsAdapter;

    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    iget-object v5, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v6, p3, Landroid/widget/RemoteViews$ActionApplyParams;->colorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RemoteCollectionItemsAdapter;->setData(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    :try_end_7b
    .catchall {:try_start_6f .. :try_end_7b} :catchall_7d

    .line 1265
    nop

    .line 1266
    return-void

    .line 1261
    :catchall_7d
    move-exception v3

    .line 1264
    .local v3, "throwable":Ljava/lang/Throwable;
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v4, v3}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1270
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :cond_84
    :try_start_84
    new-instance v3, Landroid/widget/RemoteCollectionItemsAdapter;

    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    iget-object v5, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v6, p3, Landroid/widget/RemoteViews$ActionApplyParams;->colorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/RemoteCollectionItemsAdapter;-><init>(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V
    :try_end_92
    .catchall {:try_start_84 .. :try_end_92} :catchall_94

    .line 1276
    nop

    .line 1277
    return-void

    .line 1272
    :catchall_94
    move-exception v3

    .line 1275
    .restart local v3    # "throwable":Ljava/lang/Throwable;
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v4, v3}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getActionTag()I
    .registers 2

    .line 1281
    const/16 v0, 0x1f

    return v0
.end method

.method public setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 3
    .param p1, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;

    .line 1222
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 1223
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1227
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1228
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/os/Parcel;IZ)V

    .line 1229
    return-void
.end method
