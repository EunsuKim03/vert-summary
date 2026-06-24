; ModuleID = 'llvm/c_crown/0013_ht_create/ht_reprocessed.c'
source_filename = "llvm/c_crown/0013_ht_create/ht_reprocessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ht = type { %struct.ht_entry*, i64, i64 }
%struct.ht_entry = type { i8*, i8* }

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias %struct.ht* @ht_create() local_unnamed_addr #0 {
  %1 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #4
  %2 = bitcast i8* %1 to %struct.ht*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.ht, %struct.ht* %2, i64 0, i32 2
  store i64 0, i64* %5, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.ht, %struct.ht* %2, i64 0, i32 1
  store i64 16, i64* %6, align 8, !tbaa !11
  %7 = call noalias dereferenceable_or_null(256) i8* @calloc(i64 noundef 16, i64 noundef 16) #4
  %8 = bitcast i8* %1 to i8**
  store i8* %7, i8** %8, align 8, !tbaa !12
  %9 = icmp eq i8* %7, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  call void @free(i8* noundef %1) #4
  br label %11

11:                                               ; preds = %4, %0, %10
  %12 = phi %struct.ht* [ null, %10 ], [ null, %0 ], [ %2, %4 ]
  ret %struct.ht* %12
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ht_destroy(%struct.ht* nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ht, %struct.ht* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !11
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ht, %struct.ht* %0, i64 0, i32 0
  br label %11

7:                                                ; preds = %11, %1
  %8 = bitcast %struct.ht* %0 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !12
  call void @free(i8* noundef %9) #4
  %10 = bitcast %struct.ht* %0 to i8*
  call void @free(i8* noundef %10) #4
  ret void

11:                                               ; preds = %5, %11
  %12 = phi i64 [ 0, %5 ], [ %16, %11 ]
  %13 = load %struct.ht_entry*, %struct.ht_entry** %6, align 8, !tbaa !12
  %14 = getelementptr inbounds %struct.ht_entry, %struct.ht_entry* %13, i64 %12, i32 0
  %15 = load i8*, i8** %14, align 8, !tbaa !13
  call void @free(i8* noundef %15) #4
  %16 = add nuw i64 %12, 1
  %17 = load i64, i64* %2, align 8, !tbaa !11
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %11, label %7, !llvm.loop !15
}

attributes #0 = { mustprogress nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !10, i64 16}
!6 = !{!"ht", !7, i64 0, !10, i64 8, !10, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!6, !7, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"", !7, i64 0, !7, i64 8}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
