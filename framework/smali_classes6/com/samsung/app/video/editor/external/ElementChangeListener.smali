.class interface abstract Lcom/samsung/app/video/editor/external/ElementChangeListener;
.super Ljava/lang/Object;
.source "ElementChangeListener.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract onDurationChange(I)V
.end method

.method public abstract onSlowRegionDurationChange(ILcom/samsung/app/video/editor/external/Speed;)V
.end method

.method public abstract onSlowRegionSpeedChange(Lcom/samsung/app/video/editor/external/Speed;Lcom/samsung/app/video/editor/external/Speed;I)V
.end method

.method public abstract speedChangeOnAddRegion(Lcom/samsung/app/video/editor/external/Speed;I)V
.end method

.method public abstract speedChangeOnRemoveRegion(Lcom/samsung/app/video/editor/external/Speed;I)V
.end method
