.class Lcom/flyme/DeviceOriginalSettings/profiles/ProfilesSettings$2;
.super Ljava/lang/Object;
.source "ProfilesSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/profiles/ProfilesSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/profiles/ProfilesSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/profiles/ProfilesSettings;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/ProfilesSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/ProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/ProfilesSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/ProfilesSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/profiles/ProfilesSettings;->addProfile()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/profiles/ProfilesSettings;->access$100(Lcom/flyme/DeviceOriginalSettings/profiles/ProfilesSettings;)V

    .line 147
    return-void
.end method
