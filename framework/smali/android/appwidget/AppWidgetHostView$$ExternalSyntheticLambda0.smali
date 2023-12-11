.class public final synthetic Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RemoteViews$InteractionHandler;


# instance fields
.field public final synthetic f$0:Landroid/appwidget/AppWidgetHostView;

.field public final synthetic f$1:Landroid/widget/RemoteViews$InteractionHandler;


# direct methods
.method public synthetic constructor <init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;->f$0:Landroid/appwidget/AppWidgetHostView;

    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews$InteractionHandler;

    return-void
.end method


# virtual methods
.method public final onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 6

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;->f$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->$r8$lambda$27ZsoZ6qNW9ni4kzs1fvJKcTffM(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews$InteractionHandler;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p1

    return p1
.end method
