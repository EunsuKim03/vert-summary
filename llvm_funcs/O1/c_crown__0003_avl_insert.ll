; ModuleID = 'benchmark/c_crown/0003_avl_insert/insert_processed.c'
source_filename = "benchmark/c_crown/0003_avl_insert/insert_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { i32, %struct.node*, %struct.node* }

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias %struct.node* @newNode(i32 noundef %0) local_unnamed_addr #0 {
  %2 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #4
  %3 = bitcast i8* %2 to %struct.node*
  %4 = getelementptr inbounds %struct.node, %struct.node* %3, i64 0, i32 0
  store i32 %0, i32* %4, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.node, %struct.node* %3, i64 0, i32 1
  %6 = bitcast %struct.node** %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret %struct.node* %3
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local %struct.node* @insert(%struct.node* noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq %struct.node* %0, null
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #4
  %6 = bitcast i8* %5 to %struct.node*
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i64 0, i32 0
  store i32 %1, i32* %7, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.node, %struct.node* %6, i64 0, i32 1
  %9 = bitcast %struct.node** %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false) #4
  br label %22

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !5
  %13 = icmp sgt i32 %12, %1
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 1
  %16 = load %struct.node*, %struct.node** %15, align 8, !tbaa !11
  %17 = call %struct.node* @insert(%struct.node* noundef %16, i32 noundef %1)
  store %struct.node* %17, %struct.node** %15, align 8, !tbaa !11
  br label %22

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 2
  %20 = load %struct.node*, %struct.node** %19, align 8, !tbaa !12
  %21 = call %struct.node* @insert(%struct.node* noundef %20, i32 noundef %1)
  store %struct.node* %21, %struct.node** %19, align 8, !tbaa !12
  br label %22

22:                                               ; preds = %14, %18, %4
  %23 = phi %struct.node* [ %6, %4 ], [ %0, %18 ], [ %0, %14 ]
  ret %struct.node* %23
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"node", !7, i64 0, !10, i64 8, !10, i64 16}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!6, !10, i64 16}
