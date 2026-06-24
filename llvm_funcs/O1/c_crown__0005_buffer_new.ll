; ModuleID = 'benchmark/c_crown/0005_buffer_new/buffer_processed.c'
source_filename = "benchmark/c_crown/0005_buffer_new/buffer_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.buffer_t = type { i64, i8*, i8* }

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias %struct.buffer_t* @buffer_new_with_size(i64 noundef %0) local_unnamed_addr #0 {
  %2 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #2
  %3 = bitcast i8* %2 to %struct.buffer_t*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %3, i64 0, i32 0
  store i64 %0, i64* %6, align 8, !tbaa !5
  %7 = add i64 %0, 1
  %8 = call noalias i8* @calloc(i64 noundef %7, i64 noundef 1) #2
  %9 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %3, i64 0, i32 1
  store i8* %8, i8** %9, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %3, i64 0, i32 2
  store i8* %8, i8** %10, align 8, !tbaa !12
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi %struct.buffer_t* [ %3, %5 ], [ null, %1 ]
  ret %struct.buffer_t* %12
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 16}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!6, !10, i64 16}
